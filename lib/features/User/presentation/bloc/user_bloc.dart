import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/entities/profile_picture.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/functions/routes.dart';
import '../../../../core/services/injection_container.dart';
import '../../../App/presentation/bloc/app_bloc.dart';
import '../../domain/entities/organizations.dart';
import '../../domain/entities/user_response.dart';
import '../../domain/entities/users.dart';
import '../../domain/usecases/create_organization.dart';
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
    this.accountFormBloc,
    this.organizationFormBloc,
  )   : _getUser = getUser,
        _getOrganization = getOrganization,
        super(UserState(user: user)) {
    on<UserEvent>(
      (UserEvent event, Emitter<UserState> emit) => event.when(
        getUser: () async {
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
              emit(UserState(user: user));
              routePop(sl<AppBloc>().innerNavigator);
              return null;
            },
          );
        },
        loadAccount: () => accountFormBloc.setFields(user),
        loadOrganization: () => _handleLoadOrganization(emit),
      ),
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

  final AccountFormBloc accountFormBloc;
  final OrganizationFormBloc organizationFormBloc;
  final GetUser _getUser;
  final GetOrganization _getOrganization;
}
