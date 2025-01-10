import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/entities/paginated_list.dart';
import '../../../../core/entities/profile_picture.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/functions/routes.dart';
import '../../../../core/services/injection_container.dart';
import '../../../App/presentation/bloc/app_bloc.dart';
import '../../domain/entities/organizations.dart';
import '../../domain/entities/user_response.dart';
import '../../domain/entities/users.dart';
import '../../domain/usecases/accept_invitation.dart';
import '../../domain/usecases/create_organization.dart';
import '../../domain/usecases/decline_invitation.dart';
import '../../domain/usecases/get_invitations.dart';
import '../../domain/usecases/get_invited_users.dart';
import '../../domain/usecases/get_organization.dart';
import '../../domain/usecases/get_user.dart';
import '../../domain/usecases/send_invitation.dart';
import '../../domain/usecases/update_organization.dart';
import '../../domain/usecases/update_user.dart';

part 'forms/account_form_bloc.dart';

part 'forms/organization_form_bloc.dart';

part 'forms/invite_users_form_bloc.dart';

part 'generated/user_bloc.freezed.dart';

part 'user_event.dart';

part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc(
    User user,
    GetUser getUser,
    GetOrganization getOrganization,
    GetInvitations getInvitations,
    GetInvitedUsers getInvitedUsers,
    AcceptInvitation acceptInvitation,
    DeclineInvitation declineInvitation,
    this.accountFormBloc,
    this.organizationFormBloc,
    this.inviteUsersFormBloc,
  )   : _getUser = getUser,
        _getOrganization = getOrganization,
        _getInvitations = getInvitations,
        _getInvitedUsers = getInvitedUsers,
        _acceptInvitation = acceptInvitation,
        _declineInvitation = declineInvitation,
        super(UserState.loaded(user: user)) {
    on<UserEvent>(
      (UserEvent event, Emitter<UserState> emit) async => event.when(
        getUser: () => _handleGetUser(emit),
        loadAccount: () => accountFormBloc.setFields(user),
        loadOrganization: () => _handleLoadOrganization(emit),
        loadInvitations: () => _handleLoadInvitations(emit),
        loadInvitedUsers: () => _handleLoadInvitedUsers(emit),
        acceptInvitations: (int id) async =>
            await _handleAcceptInvitations(id, emit),
        declineInvitations: (int id) => _handleDeclineInvitations(id, emit),
      ),
    );
  }

  Future<void> _handleGetUser(Emitter<UserState> emit) async {
    final Either<Failure, User> result = await _getUser(
      state.user.id,
    );
    return result.fold(
      (Failure failure) => sl<AppBloc>().add(
        const AppEvent.error(
          message: 'There was an unknown error',
        ),
      ),
      (User user) {
        emit(UserState.loaded(user: user));
      },
    );
  }

  Future<void> _handleLoadOrganization(Emitter<UserState> emit) async {
    if (state.user.organizationId == null) {
      organizationFormBloc.resetFields();
    } else {
      sl<AppBloc>().add(const AppEvent.overlayAdd());
      final Either<Failure, Organization> result = await _getOrganization(
        state.user.organizationId!,
      );
      result.fold(
        (Failure failure) => null,
        (Organization organization) =>
            organizationFormBloc.setFields(organization, state.user.roleName),
      );
      sl<AppBloc>().add(const AppEvent.overlayRemove());
    }
  }

  Future<void> _handleLoadInvitations(Emitter<UserState> emit) async {
    if (state.user.organizationId == null) {
      emit(
        UserState.getting(
          user: state.user,
          invitaions: mockInvitations,
          invitedUsers: mockUsers,
        ),
      );
      final Either<Failure, Organizations> result = await _getInvitations();
      result.fold(
        (Failure failure) {
          sl<AppBloc>().add(
            const AppEvent.error(
              message: 'There was an error loading your invitations',
            ),
          );
          routePop(sl<AppBloc>().innerNavigator);
          return null;
        },
        (Organizations organizations) {
          emit(UserState.loaded(user: state.user, invitaions: organizations));
        },
      );
    }
  }

  Future<void> _handleLoadInvitedUsers(Emitter<UserState> emit) async {
    emit(
      UserState.getting(
        user: state.user,
        invitaions: mockInvitations,
        invitedUsers: mockUsers,
      ),
    );
    final Either<Failure, Users> result =
        await _getInvitedUsers(state.user.organizationId!);
    result.fold(
      (Failure failure) {
        sl<AppBloc>().add(
          const AppEvent.error(
            message: 'There was an error loading the pending user invitations',
          ),
        );
        routePop(sl<AppBloc>().innerNavigator);
      },
      (Users users) {
        emit(UserState.loaded(user: state.user, invitedUsers: users));
      },
    );
  }

  Future<void> _handleAcceptInvitations(int id, Emitter<UserState> emit) async {
    sl<AppBloc>().add(const AppEvent.overlayAdd());
    final Either<Failure, UserResponse> result = await _acceptInvitation(id);
    sl<AppBloc>().add(const AppEvent.overlayRemove());
    result.fold(
      (Failure failure) async =>
          sl<AppBloc>().add(AppEvent.error(message: failure.message)),
      (UserResponse response) async {
        routePopWithResult(sl<AppBloc>().innerNavigator, true);
        sl<AppBloc>().add(AppEvent.success(message: response.message));
      },
    );
  }

  Future<void> _handleDeclineInvitations(
    int id,
    Emitter<UserState> emit,
  ) async {
    sl<AppBloc>().add(const AppEvent.overlayAdd());
    final Either<Failure, UserResponse> result = await _declineInvitation(id);
    sl<AppBloc>().add(const AppEvent.overlayRemove());

    result.fold(
      (Failure failure) async =>
          sl<AppBloc>().add(AppEvent.error(message: failure.message)),
      (UserResponse response) async {
        sl<AppBloc>().add(AppEvent.success(message: response.message));
        add(const UserEvent.loadInvitations());
      },
    );
  }

  final AccountFormBloc accountFormBloc;
  final OrganizationFormBloc organizationFormBloc;
  final InviteUsersFormBloc inviteUsersFormBloc;
  final GetUser _getUser;
  final GetOrganization _getOrganization;
  final GetInvitations _getInvitations;
  final GetInvitedUsers _getInvitedUsers;
  final AcceptInvitation _acceptInvitation;
  final DeclineInvitation _declineInvitation;

  Organizations get mockInvitations => Organizations(
        items: List<Organization>.generate(
          5,
          (int index) => Organization(
            id: index,
            name: 'Organization name',
            description: 'Organization description',
          ),
        ),
        total: 5,
      );

  Users get mockUsers => Users(
        items: List<User>.generate(
          5,
          (int index) => User(
            id: index,
            firstname: 'Firstname',
            lastname: 'Lastname',
            email: 'temp@mail.com',
            jobTitle: 'Developer',
          ),
        ),
        total: 5,
      );
}
