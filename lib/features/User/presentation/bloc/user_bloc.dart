import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/users.dart';

part 'generated/user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserState.initial()) {
    on<UserEvent>(
      (UserEvent event, Emitter<UserState> emit) => event.when(
        setUser: (User user) => emit(UserState(user: user)),
      ),
    );
  }
}
