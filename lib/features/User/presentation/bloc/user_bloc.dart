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
import '../../domain/usecases/create_organization.dart';
import '../../domain/usecases/get_invitations.dart';
import '../../domain/usecases/get_invited_users.dart';
import '../../domain/usecases/get_organization.dart';
import '../../domain/usecases/get_user.dart';
import '../../domain/usecases/update_organization.dart';
import '../../domain/usecases/update_user.dart';

part 'forms/account_form_bloc.dart';

part 'forms/organization_form_bloc.dart';

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
    this.accountFormBloc,
    this.organizationFormBloc,
  )   : _getUser = getUser,
        _getOrganization = getOrganization,
        _getInvitations = getInvitations,
        _getInvitedUsers = getInvitedUsers,
        super(UserState(user: user)) {
    on<UserEvent>(
      (UserEvent event, Emitter<UserState> emit) => event.when(
        getUser: () => _handleGetUser(emit),
        loadAccount: () => accountFormBloc.setFields(user),
        loadOrganization: () => _handleLoadOrganization(emit),
        loadInvitations: () => _handleLoadInvitations(emit),
        loadInvitedUsers: () => _handleLoadInvitedUsers(emit),
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
        emit(state.copyWith(user: user));
        routePop(sl<AppBloc>().innerNavigator);
        return null;
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
            organizationFormBloc.setFields(organization, state.user.roleName!),
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
          invitedUsers: mockInvitedUsers,
        ),
      );
      final Either<Failure, Organizations> result = await _getInvitations();
      return result.fold(
        (Failure failure) => sl<AppBloc>().add(
          const AppEvent.error(
            message: 'There was an error loading your invitations',
          ),
        ),
        (Organizations organizations) {
          emit(state.copyWith(invitaions: organizations));
        },
      );
    }
  }

  Future<void> _handleLoadInvitedUsers(Emitter<UserState> emit) async {
    emit(
      UserState.getting(
        user: state.user,
        invitaions: mockInvitations,
        invitedUsers: mockInvitedUsers,
      ),
    );
    final Either<Failure, Users> result =
        await _getInvitedUsers(state.user.organizationId!);
    return result.fold(
      (Failure failure) => sl<AppBloc>().add(
        const AppEvent.error(
          message: 'There was an error loading the pending user invitations',
        ),
      ),
      (Users users) {
        emit(state.copyWith(invitedUsers: users));
      },
    );
  }

  final AccountFormBloc accountFormBloc;
  final OrganizationFormBloc organizationFormBloc;
  final GetUser _getUser;
  final GetOrganization _getOrganization;
  final GetInvitations _getInvitations;
  final GetInvitedUsers _getInvitedUsers;

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

  Users get mockInvitedUsers => Users(
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
