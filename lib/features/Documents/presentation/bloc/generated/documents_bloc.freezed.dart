// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../documents_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DocumentsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? dateFrom, String? dateUntil, int? projectId)
        get,
    required TResult Function(PaginatedList<Document> currentDocuments,
            int page, String? dateFrom, String? dateUntil, int? projectId)
        getNext,
    required TResult Function(Document document) downloadFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? dateFrom, String? dateUntil, int? projectId)? get,
    TResult? Function(PaginatedList<Document> currentDocuments, int page,
            String? dateFrom, String? dateUntil, int? projectId)?
        getNext,
    TResult? Function(Document document)? downloadFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? dateFrom, String? dateUntil, int? projectId)? get,
    TResult Function(PaginatedList<Document> currentDocuments, int page,
            String? dateFrom, String? dateUntil, int? projectId)?
        getNext,
    TResult Function(Document document)? downloadFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DocumentsEventGet value) get,
    required TResult Function(_DocumentsEventGetNext value) getNext,
    required TResult Function(_DocumentsEventDownloadFile value) downloadFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DocumentsEventGet value)? get,
    TResult? Function(_DocumentsEventGetNext value)? getNext,
    TResult? Function(_DocumentsEventDownloadFile value)? downloadFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DocumentsEventGet value)? get,
    TResult Function(_DocumentsEventGetNext value)? getNext,
    TResult Function(_DocumentsEventDownloadFile value)? downloadFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentsEventCopyWith<$Res> {
  factory $DocumentsEventCopyWith(
          DocumentsEvent value, $Res Function(DocumentsEvent) then) =
      _$DocumentsEventCopyWithImpl<$Res, DocumentsEvent>;
}

/// @nodoc
class _$DocumentsEventCopyWithImpl<$Res, $Val extends DocumentsEvent>
    implements $DocumentsEventCopyWith<$Res> {
  _$DocumentsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DocumentsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DocumentsEventGetImplCopyWith<$Res> {
  factory _$$DocumentsEventGetImplCopyWith(_$DocumentsEventGetImpl value,
          $Res Function(_$DocumentsEventGetImpl) then) =
      __$$DocumentsEventGetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? dateFrom, String? dateUntil, int? projectId});
}

/// @nodoc
class __$$DocumentsEventGetImplCopyWithImpl<$Res>
    extends _$DocumentsEventCopyWithImpl<$Res, _$DocumentsEventGetImpl>
    implements _$$DocumentsEventGetImplCopyWith<$Res> {
  __$$DocumentsEventGetImplCopyWithImpl(_$DocumentsEventGetImpl _value,
      $Res Function(_$DocumentsEventGetImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocumentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateFrom = freezed,
    Object? dateUntil = freezed,
    Object? projectId = freezed,
  }) {
    return _then(_$DocumentsEventGetImpl(
      dateFrom: freezed == dateFrom
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      dateUntil: freezed == dateUntil
          ? _value.dateUntil
          : dateUntil // ignore: cast_nullable_to_non_nullable
              as String?,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$DocumentsEventGetImpl implements _DocumentsEventGet {
  const _$DocumentsEventGetImpl(
      {this.dateFrom, this.dateUntil, this.projectId});

  @override
  final String? dateFrom;
  @override
  final String? dateUntil;
  @override
  final int? projectId;

  @override
  String toString() {
    return 'DocumentsEvent.get(dateFrom: $dateFrom, dateUntil: $dateUntil, projectId: $projectId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentsEventGetImpl &&
            (identical(other.dateFrom, dateFrom) ||
                other.dateFrom == dateFrom) &&
            (identical(other.dateUntil, dateUntil) ||
                other.dateUntil == dateUntil) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateFrom, dateUntil, projectId);

  /// Create a copy of DocumentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentsEventGetImplCopyWith<_$DocumentsEventGetImpl> get copyWith =>
      __$$DocumentsEventGetImplCopyWithImpl<_$DocumentsEventGetImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? dateFrom, String? dateUntil, int? projectId)
        get,
    required TResult Function(PaginatedList<Document> currentDocuments,
            int page, String? dateFrom, String? dateUntil, int? projectId)
        getNext,
    required TResult Function(Document document) downloadFile,
  }) {
    return get(dateFrom, dateUntil, projectId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? dateFrom, String? dateUntil, int? projectId)? get,
    TResult? Function(PaginatedList<Document> currentDocuments, int page,
            String? dateFrom, String? dateUntil, int? projectId)?
        getNext,
    TResult? Function(Document document)? downloadFile,
  }) {
    return get?.call(dateFrom, dateUntil, projectId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? dateFrom, String? dateUntil, int? projectId)? get,
    TResult Function(PaginatedList<Document> currentDocuments, int page,
            String? dateFrom, String? dateUntil, int? projectId)?
        getNext,
    TResult Function(Document document)? downloadFile,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(dateFrom, dateUntil, projectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DocumentsEventGet value) get,
    required TResult Function(_DocumentsEventGetNext value) getNext,
    required TResult Function(_DocumentsEventDownloadFile value) downloadFile,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DocumentsEventGet value)? get,
    TResult? Function(_DocumentsEventGetNext value)? getNext,
    TResult? Function(_DocumentsEventDownloadFile value)? downloadFile,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DocumentsEventGet value)? get,
    TResult Function(_DocumentsEventGetNext value)? getNext,
    TResult Function(_DocumentsEventDownloadFile value)? downloadFile,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _DocumentsEventGet implements DocumentsEvent {
  const factory _DocumentsEventGet(
      {final String? dateFrom,
      final String? dateUntil,
      final int? projectId}) = _$DocumentsEventGetImpl;

  String? get dateFrom;
  String? get dateUntil;
  int? get projectId;

  /// Create a copy of DocumentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocumentsEventGetImplCopyWith<_$DocumentsEventGetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DocumentsEventGetNextImplCopyWith<$Res> {
  factory _$$DocumentsEventGetNextImplCopyWith(
          _$DocumentsEventGetNextImpl value,
          $Res Function(_$DocumentsEventGetNextImpl) then) =
      __$$DocumentsEventGetNextImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {PaginatedList<Document> currentDocuments,
      int page,
      String? dateFrom,
      String? dateUntil,
      int? projectId});

  $PaginatedListCopyWith<Document, $Res> get currentDocuments;
}

/// @nodoc
class __$$DocumentsEventGetNextImplCopyWithImpl<$Res>
    extends _$DocumentsEventCopyWithImpl<$Res, _$DocumentsEventGetNextImpl>
    implements _$$DocumentsEventGetNextImplCopyWith<$Res> {
  __$$DocumentsEventGetNextImplCopyWithImpl(_$DocumentsEventGetNextImpl _value,
      $Res Function(_$DocumentsEventGetNextImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocumentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentDocuments = null,
    Object? page = null,
    Object? dateFrom = freezed,
    Object? dateUntil = freezed,
    Object? projectId = freezed,
  }) {
    return _then(_$DocumentsEventGetNextImpl(
      currentDocuments: null == currentDocuments
          ? _value.currentDocuments
          : currentDocuments // ignore: cast_nullable_to_non_nullable
              as PaginatedList<Document>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      dateFrom: freezed == dateFrom
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      dateUntil: freezed == dateUntil
          ? _value.dateUntil
          : dateUntil // ignore: cast_nullable_to_non_nullable
              as String?,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of DocumentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatedListCopyWith<Document, $Res> get currentDocuments {
    return $PaginatedListCopyWith<Document, $Res>(_value.currentDocuments,
        (value) {
      return _then(_value.copyWith(currentDocuments: value));
    });
  }
}

/// @nodoc

class _$DocumentsEventGetNextImpl implements _DocumentsEventGetNext {
  const _$DocumentsEventGetNextImpl(
      {required this.currentDocuments,
      required this.page,
      this.dateFrom,
      this.dateUntil,
      this.projectId});

  @override
  final PaginatedList<Document> currentDocuments;
  @override
  final int page;
  @override
  final String? dateFrom;
  @override
  final String? dateUntil;
  @override
  final int? projectId;

  @override
  String toString() {
    return 'DocumentsEvent.getNext(currentDocuments: $currentDocuments, page: $page, dateFrom: $dateFrom, dateUntil: $dateUntil, projectId: $projectId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentsEventGetNextImpl &&
            (identical(other.currentDocuments, currentDocuments) ||
                other.currentDocuments == currentDocuments) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.dateFrom, dateFrom) ||
                other.dateFrom == dateFrom) &&
            (identical(other.dateUntil, dateUntil) ||
                other.dateUntil == dateUntil) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, currentDocuments, page, dateFrom, dateUntil, projectId);

  /// Create a copy of DocumentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentsEventGetNextImplCopyWith<_$DocumentsEventGetNextImpl>
      get copyWith => __$$DocumentsEventGetNextImplCopyWithImpl<
          _$DocumentsEventGetNextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? dateFrom, String? dateUntil, int? projectId)
        get,
    required TResult Function(PaginatedList<Document> currentDocuments,
            int page, String? dateFrom, String? dateUntil, int? projectId)
        getNext,
    required TResult Function(Document document) downloadFile,
  }) {
    return getNext(currentDocuments, page, dateFrom, dateUntil, projectId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? dateFrom, String? dateUntil, int? projectId)? get,
    TResult? Function(PaginatedList<Document> currentDocuments, int page,
            String? dateFrom, String? dateUntil, int? projectId)?
        getNext,
    TResult? Function(Document document)? downloadFile,
  }) {
    return getNext?.call(
        currentDocuments, page, dateFrom, dateUntil, projectId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? dateFrom, String? dateUntil, int? projectId)? get,
    TResult Function(PaginatedList<Document> currentDocuments, int page,
            String? dateFrom, String? dateUntil, int? projectId)?
        getNext,
    TResult Function(Document document)? downloadFile,
    required TResult orElse(),
  }) {
    if (getNext != null) {
      return getNext(currentDocuments, page, dateFrom, dateUntil, projectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DocumentsEventGet value) get,
    required TResult Function(_DocumentsEventGetNext value) getNext,
    required TResult Function(_DocumentsEventDownloadFile value) downloadFile,
  }) {
    return getNext(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DocumentsEventGet value)? get,
    TResult? Function(_DocumentsEventGetNext value)? getNext,
    TResult? Function(_DocumentsEventDownloadFile value)? downloadFile,
  }) {
    return getNext?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DocumentsEventGet value)? get,
    TResult Function(_DocumentsEventGetNext value)? getNext,
    TResult Function(_DocumentsEventDownloadFile value)? downloadFile,
    required TResult orElse(),
  }) {
    if (getNext != null) {
      return getNext(this);
    }
    return orElse();
  }
}

abstract class _DocumentsEventGetNext implements DocumentsEvent {
  const factory _DocumentsEventGetNext(
      {required final PaginatedList<Document> currentDocuments,
      required final int page,
      final String? dateFrom,
      final String? dateUntil,
      final int? projectId}) = _$DocumentsEventGetNextImpl;

  PaginatedList<Document> get currentDocuments;
  int get page;
  String? get dateFrom;
  String? get dateUntil;
  int? get projectId;

  /// Create a copy of DocumentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocumentsEventGetNextImplCopyWith<_$DocumentsEventGetNextImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DocumentsEventDownloadFileImplCopyWith<$Res> {
  factory _$$DocumentsEventDownloadFileImplCopyWith(
          _$DocumentsEventDownloadFileImpl value,
          $Res Function(_$DocumentsEventDownloadFileImpl) then) =
      __$$DocumentsEventDownloadFileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Document document});

  $DocumentCopyWith<$Res> get document;
}

/// @nodoc
class __$$DocumentsEventDownloadFileImplCopyWithImpl<$Res>
    extends _$DocumentsEventCopyWithImpl<$Res, _$DocumentsEventDownloadFileImpl>
    implements _$$DocumentsEventDownloadFileImplCopyWith<$Res> {
  __$$DocumentsEventDownloadFileImplCopyWithImpl(
      _$DocumentsEventDownloadFileImpl _value,
      $Res Function(_$DocumentsEventDownloadFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocumentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = null,
  }) {
    return _then(_$DocumentsEventDownloadFileImpl(
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document,
    ));
  }

  /// Create a copy of DocumentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DocumentCopyWith<$Res> get document {
    return $DocumentCopyWith<$Res>(_value.document, (value) {
      return _then(_value.copyWith(document: value));
    });
  }
}

/// @nodoc

class _$DocumentsEventDownloadFileImpl implements _DocumentsEventDownloadFile {
  const _$DocumentsEventDownloadFileImpl({required this.document});

  @override
  final Document document;

  @override
  String toString() {
    return 'DocumentsEvent.downloadFile(document: $document)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentsEventDownloadFileImpl &&
            (identical(other.document, document) ||
                other.document == document));
  }

  @override
  int get hashCode => Object.hash(runtimeType, document);

  /// Create a copy of DocumentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentsEventDownloadFileImplCopyWith<_$DocumentsEventDownloadFileImpl>
      get copyWith => __$$DocumentsEventDownloadFileImplCopyWithImpl<
          _$DocumentsEventDownloadFileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? dateFrom, String? dateUntil, int? projectId)
        get,
    required TResult Function(PaginatedList<Document> currentDocuments,
            int page, String? dateFrom, String? dateUntil, int? projectId)
        getNext,
    required TResult Function(Document document) downloadFile,
  }) {
    return downloadFile(document);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? dateFrom, String? dateUntil, int? projectId)? get,
    TResult? Function(PaginatedList<Document> currentDocuments, int page,
            String? dateFrom, String? dateUntil, int? projectId)?
        getNext,
    TResult? Function(Document document)? downloadFile,
  }) {
    return downloadFile?.call(document);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? dateFrom, String? dateUntil, int? projectId)? get,
    TResult Function(PaginatedList<Document> currentDocuments, int page,
            String? dateFrom, String? dateUntil, int? projectId)?
        getNext,
    TResult Function(Document document)? downloadFile,
    required TResult orElse(),
  }) {
    if (downloadFile != null) {
      return downloadFile(document);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DocumentsEventGet value) get,
    required TResult Function(_DocumentsEventGetNext value) getNext,
    required TResult Function(_DocumentsEventDownloadFile value) downloadFile,
  }) {
    return downloadFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DocumentsEventGet value)? get,
    TResult? Function(_DocumentsEventGetNext value)? getNext,
    TResult? Function(_DocumentsEventDownloadFile value)? downloadFile,
  }) {
    return downloadFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DocumentsEventGet value)? get,
    TResult Function(_DocumentsEventGetNext value)? getNext,
    TResult Function(_DocumentsEventDownloadFile value)? downloadFile,
    required TResult orElse(),
  }) {
    if (downloadFile != null) {
      return downloadFile(this);
    }
    return orElse();
  }
}

abstract class _DocumentsEventDownloadFile implements DocumentsEvent {
  const factory _DocumentsEventDownloadFile(
      {required final Document document}) = _$DocumentsEventDownloadFileImpl;

  Document get document;

  /// Create a copy of DocumentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocumentsEventDownloadFileImplCopyWith<_$DocumentsEventDownloadFileImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DocumentsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaginatedList<Document> documents) getting,
    required TResult Function(PaginatedList<Document> documents, int page)
        loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaginatedList<Document> documents)? getting,
    TResult? Function(PaginatedList<Document> documents, int page)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaginatedList<Document> documents)? getting,
    TResult Function(PaginatedList<Document> documents, int page)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DocumentsStateGetting value) getting,
    required TResult Function(_DocumentsStateLoaded value) loaded,
    required TResult Function(_DocumentsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DocumentsStateGetting value)? getting,
    TResult? Function(_DocumentsStateLoaded value)? loaded,
    TResult? Function(_DocumentsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DocumentsStateGetting value)? getting,
    TResult Function(_DocumentsStateLoaded value)? loaded,
    TResult Function(_DocumentsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentsStateCopyWith<$Res> {
  factory $DocumentsStateCopyWith(
          DocumentsState value, $Res Function(DocumentsState) then) =
      _$DocumentsStateCopyWithImpl<$Res, DocumentsState>;
}

/// @nodoc
class _$DocumentsStateCopyWithImpl<$Res, $Val extends DocumentsState>
    implements $DocumentsStateCopyWith<$Res> {
  _$DocumentsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DocumentsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DocumentsStateGettingImplCopyWith<$Res> {
  factory _$$DocumentsStateGettingImplCopyWith(
          _$DocumentsStateGettingImpl value,
          $Res Function(_$DocumentsStateGettingImpl) then) =
      __$$DocumentsStateGettingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaginatedList<Document> documents});

  $PaginatedListCopyWith<Document, $Res> get documents;
}

/// @nodoc
class __$$DocumentsStateGettingImplCopyWithImpl<$Res>
    extends _$DocumentsStateCopyWithImpl<$Res, _$DocumentsStateGettingImpl>
    implements _$$DocumentsStateGettingImplCopyWith<$Res> {
  __$$DocumentsStateGettingImplCopyWithImpl(_$DocumentsStateGettingImpl _value,
      $Res Function(_$DocumentsStateGettingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocumentsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documents = null,
  }) {
    return _then(_$DocumentsStateGettingImpl(
      documents: null == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as PaginatedList<Document>,
    ));
  }

  /// Create a copy of DocumentsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatedListCopyWith<Document, $Res> get documents {
    return $PaginatedListCopyWith<Document, $Res>(_value.documents, (value) {
      return _then(_value.copyWith(documents: value));
    });
  }
}

/// @nodoc

class _$DocumentsStateGettingImpl implements _DocumentsStateGetting {
  const _$DocumentsStateGettingImpl({required this.documents});

  @override
  final PaginatedList<Document> documents;

  @override
  String toString() {
    return 'DocumentsState.getting(documents: $documents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentsStateGettingImpl &&
            (identical(other.documents, documents) ||
                other.documents == documents));
  }

  @override
  int get hashCode => Object.hash(runtimeType, documents);

  /// Create a copy of DocumentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentsStateGettingImplCopyWith<_$DocumentsStateGettingImpl>
      get copyWith => __$$DocumentsStateGettingImplCopyWithImpl<
          _$DocumentsStateGettingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaginatedList<Document> documents) getting,
    required TResult Function(PaginatedList<Document> documents, int page)
        loaded,
    required TResult Function() error,
  }) {
    return getting(documents);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaginatedList<Document> documents)? getting,
    TResult? Function(PaginatedList<Document> documents, int page)? loaded,
    TResult? Function()? error,
  }) {
    return getting?.call(documents);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaginatedList<Document> documents)? getting,
    TResult Function(PaginatedList<Document> documents, int page)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (getting != null) {
      return getting(documents);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DocumentsStateGetting value) getting,
    required TResult Function(_DocumentsStateLoaded value) loaded,
    required TResult Function(_DocumentsStateError value) error,
  }) {
    return getting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DocumentsStateGetting value)? getting,
    TResult? Function(_DocumentsStateLoaded value)? loaded,
    TResult? Function(_DocumentsStateError value)? error,
  }) {
    return getting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DocumentsStateGetting value)? getting,
    TResult Function(_DocumentsStateLoaded value)? loaded,
    TResult Function(_DocumentsStateError value)? error,
    required TResult orElse(),
  }) {
    if (getting != null) {
      return getting(this);
    }
    return orElse();
  }
}

abstract class _DocumentsStateGetting implements DocumentsState {
  const factory _DocumentsStateGetting(
          {required final PaginatedList<Document> documents}) =
      _$DocumentsStateGettingImpl;

  PaginatedList<Document> get documents;

  /// Create a copy of DocumentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocumentsStateGettingImplCopyWith<_$DocumentsStateGettingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DocumentsStateLoadedImplCopyWith<$Res> {
  factory _$$DocumentsStateLoadedImplCopyWith(_$DocumentsStateLoadedImpl value,
          $Res Function(_$DocumentsStateLoadedImpl) then) =
      __$$DocumentsStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaginatedList<Document> documents, int page});

  $PaginatedListCopyWith<Document, $Res> get documents;
}

/// @nodoc
class __$$DocumentsStateLoadedImplCopyWithImpl<$Res>
    extends _$DocumentsStateCopyWithImpl<$Res, _$DocumentsStateLoadedImpl>
    implements _$$DocumentsStateLoadedImplCopyWith<$Res> {
  __$$DocumentsStateLoadedImplCopyWithImpl(_$DocumentsStateLoadedImpl _value,
      $Res Function(_$DocumentsStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocumentsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documents = null,
    Object? page = null,
  }) {
    return _then(_$DocumentsStateLoadedImpl(
      documents: null == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as PaginatedList<Document>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of DocumentsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatedListCopyWith<Document, $Res> get documents {
    return $PaginatedListCopyWith<Document, $Res>(_value.documents, (value) {
      return _then(_value.copyWith(documents: value));
    });
  }
}

/// @nodoc

class _$DocumentsStateLoadedImpl implements _DocumentsStateLoaded {
  const _$DocumentsStateLoadedImpl(
      {required this.documents, required this.page});

  @override
  final PaginatedList<Document> documents;
  @override
  final int page;

  @override
  String toString() {
    return 'DocumentsState.loaded(documents: $documents, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentsStateLoadedImpl &&
            (identical(other.documents, documents) ||
                other.documents == documents) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, documents, page);

  /// Create a copy of DocumentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentsStateLoadedImplCopyWith<_$DocumentsStateLoadedImpl>
      get copyWith =>
          __$$DocumentsStateLoadedImplCopyWithImpl<_$DocumentsStateLoadedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaginatedList<Document> documents) getting,
    required TResult Function(PaginatedList<Document> documents, int page)
        loaded,
    required TResult Function() error,
  }) {
    return loaded(documents, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaginatedList<Document> documents)? getting,
    TResult? Function(PaginatedList<Document> documents, int page)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(documents, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaginatedList<Document> documents)? getting,
    TResult Function(PaginatedList<Document> documents, int page)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(documents, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DocumentsStateGetting value) getting,
    required TResult Function(_DocumentsStateLoaded value) loaded,
    required TResult Function(_DocumentsStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DocumentsStateGetting value)? getting,
    TResult? Function(_DocumentsStateLoaded value)? loaded,
    TResult? Function(_DocumentsStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DocumentsStateGetting value)? getting,
    TResult Function(_DocumentsStateLoaded value)? loaded,
    TResult Function(_DocumentsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _DocumentsStateLoaded implements DocumentsState {
  const factory _DocumentsStateLoaded(
      {required final PaginatedList<Document> documents,
      required final int page}) = _$DocumentsStateLoadedImpl;

  PaginatedList<Document> get documents;
  int get page;

  /// Create a copy of DocumentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocumentsStateLoadedImplCopyWith<_$DocumentsStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DocumentsStateErrorImplCopyWith<$Res> {
  factory _$$DocumentsStateErrorImplCopyWith(_$DocumentsStateErrorImpl value,
          $Res Function(_$DocumentsStateErrorImpl) then) =
      __$$DocumentsStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DocumentsStateErrorImplCopyWithImpl<$Res>
    extends _$DocumentsStateCopyWithImpl<$Res, _$DocumentsStateErrorImpl>
    implements _$$DocumentsStateErrorImplCopyWith<$Res> {
  __$$DocumentsStateErrorImplCopyWithImpl(_$DocumentsStateErrorImpl _value,
      $Res Function(_$DocumentsStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocumentsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DocumentsStateErrorImpl implements _DocumentsStateError {
  const _$DocumentsStateErrorImpl();

  @override
  String toString() {
    return 'DocumentsState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentsStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaginatedList<Document> documents) getting,
    required TResult Function(PaginatedList<Document> documents, int page)
        loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaginatedList<Document> documents)? getting,
    TResult? Function(PaginatedList<Document> documents, int page)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaginatedList<Document> documents)? getting,
    TResult Function(PaginatedList<Document> documents, int page)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DocumentsStateGetting value) getting,
    required TResult Function(_DocumentsStateLoaded value) loaded,
    required TResult Function(_DocumentsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DocumentsStateGetting value)? getting,
    TResult? Function(_DocumentsStateLoaded value)? loaded,
    TResult? Function(_DocumentsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DocumentsStateGetting value)? getting,
    TResult Function(_DocumentsStateLoaded value)? loaded,
    TResult Function(_DocumentsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _DocumentsStateError implements DocumentsState {
  const factory _DocumentsStateError() = _$DocumentsStateErrorImpl;
}
