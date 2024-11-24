import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/utils/localdata_manager.dart';
import '../../../User/domain/entities/users.dart';
import '../../../User/presentation/bloc/user_bloc.dart';
import '../../domain/entities/auth_response.dart';
import '../../domain/usecases/login.dart';
import '../../domain/usecases/register.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'forms/login_form_bloc.dart';
part 'forms/register_form_bloc.dart';
part 'generated/auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required this.loginFormBloc,
    required this.registerFormBloc,
  }) : super(const AuthState()) {
    on<AuthEvent>((AuthEvent event, Emitter<AuthState> emit) => event.when(
      login: () => loginFormBloc.submit(),
      register: () => registerFormBloc.submit(),
    ),);

  }

  final LoginFormBloc loginFormBloc;
  final RegisterFormBloc registerFormBloc;
  final PageController pageController = PageController();
}
