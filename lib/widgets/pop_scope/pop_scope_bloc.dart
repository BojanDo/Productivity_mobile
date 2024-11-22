import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/pop_scope_bloc.freezed.dart';
part 'pop_scope_event.dart';
part 'pop_scope_state.dart';

class PopScopeBloc extends Bloc<PopScopeEvent, PopScopeState> {
  PopScopeBloc() : super(PopScopeState(onPop: () {})) {
    on<PopScopeEvent>(
      (PopScopeEvent event, Emitter<PopScopeState> emit) => event.when(
        canPop: (bool canPop, VoidCallback? onPop) =>
            _canPopHandler(canPop, onPop ?? () {}, emit),
      ),
    );
  }

  void _canPopHandler(
    bool canPop,
    VoidCallback onPop,
    Emitter<PopScopeState> emit,
  ) {
    emit(PopScopeState(canPop: canPop, onPop: onPop));
  }
}
