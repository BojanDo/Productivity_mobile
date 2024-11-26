part of 'documents_bloc.dart';

@freezed
class DocumentsState with _$DocumentsState {
  const factory DocumentsState.initial() = _DocumentsStateInitial;
  const factory DocumentsState.getting({required Documents documents}) = _DocumentsStateGetting;
  const factory DocumentsState.loaded({required Documents documents}) = _DocumentsStateLoaded;
  const factory DocumentsState.error() = _DocumentsStateError;
}
