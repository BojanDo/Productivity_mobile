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
import '../../domain/entities/user_response.dart';
import '../../domain/entities/users.dart';
import '../../domain/usecases/get_user.dart';
import '../../domain/usecases/update_user.dart';

part 'forms/account_form_bloc.dart';

part 'generated/user_bloc.freezed.dart';

part 'user_event.dart';

part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc(
    User user,
    this.accountFormBloc,
    GetUser getUser,
  )   : _getUser = getUser,
        super(UserState(user: user)) {
    on<UserEvent>(
      (UserEvent event, Emitter<UserState> emit) => event.when(
        loadAccount: () => accountFormBloc.setFields(user),
        getUser: () async {
          final Either<Failure, User> result = await _getUser(state.user.id);
          return result.fold(
            (Failure failure) => sl<AppBloc>().add(
                const AppEvent.error(message: 'There was an unknown error')),
            (User user) {
              emit(UserState(user: user));
              routePop(sl<AppBloc>().innerNavigator);
              return null;
            },
          );
        },
      ),
    );
  }

  final AccountFormBloc accountFormBloc;
  final GetUser _getUser;
}
