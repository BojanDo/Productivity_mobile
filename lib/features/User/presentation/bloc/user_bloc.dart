import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/users.dart';
import '../../domain/usecases/update_user.dart';

part 'generated/user_bloc.freezed.dart';

part 'user_event.dart';

part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc(User user) : super(UserState(user: user)) {
    on<UserEvent>(
      (UserEvent event, Emitter<UserState> emit) => event.when(
        updateUser: (UpdateUserParams params) => emit(
          UserState(
            user: state.user.copyWith(
              firstname: params.firstname,
              lastname: params.lastname,
              profilePicture: params.profilePicture,
              jobTitle: params.jobTitle,
            ),
          ),
        ),
      ),
    );
  }
}
