// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../get_documents.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetDocumentsParams _$GetDocumentsParamsFromJson(Map<String, dynamic> json) {
  return _GetDocumentsParams.fromJson(json);
}

/// @nodoc
mixin _$GetDocumentsParams {
  String get page => throw _privateConstructorUsedError;
  String get dateFrom => throw _privateConstructorUsedError;
  String get dateUntil => throw _privateConstructorUsedError;
  @JsonKey(name: 'project_id')
  String get projectId => throw _privateConstructorUsedError;

  /// Serializes this GetDocumentsParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetDocumentsParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetDocumentsParamsCopyWith<GetDocumentsParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDocumentsParamsCopyWith<$Res> {
  factory $GetDocumentsParamsCopyWith(
          GetDocumentsParams value, $Res Function(GetDocumentsParams) then) =
      _$GetDocumentsParamsCopyWithImpl<$Res, GetDocumentsParams>;
  @useResult
  $Res call(
      {String page,
      String dateFrom,
      String dateUntil,
      @JsonKey(name: 'project_id') String projectId});
}

/// @nodoc
class _$GetDocumentsParamsCopyWithImpl<$Res, $Val extends GetDocumentsParams>
    implements $GetDocumentsParamsCopyWith<$Res> {
  _$GetDocumentsParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetDocumentsParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? dateFrom = null,
    Object? dateUntil = null,
    Object? projectId = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
      dateFrom: null == dateFrom
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as String,
      dateUntil: null == dateUntil
          ? _value.dateUntil
          : dateUntil // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetDocumentsParamsImplCopyWith<$Res>
    implements $GetDocumentsParamsCopyWith<$Res> {
  factory _$$GetDocumentsParamsImplCopyWith(_$GetDocumentsParamsImpl value,
          $Res Function(_$GetDocumentsParamsImpl) then) =
      __$$GetDocumentsParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String page,
      String dateFrom,
      String dateUntil,
      @JsonKey(name: 'project_id') String projectId});
}

/// @nodoc
class __$$GetDocumentsParamsImplCopyWithImpl<$Res>
    extends _$GetDocumentsParamsCopyWithImpl<$Res, _$GetDocumentsParamsImpl>
    implements _$$GetDocumentsParamsImplCopyWith<$Res> {
  __$$GetDocumentsParamsImplCopyWithImpl(_$GetDocumentsParamsImpl _value,
      $Res Function(_$GetDocumentsParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetDocumentsParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? dateFrom = null,
    Object? dateUntil = null,
    Object? projectId = null,
  }) {
    return _then(_$GetDocumentsParamsImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
      dateFrom: null == dateFrom
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as String,
      dateUntil: null == dateUntil
          ? _value.dateUntil
          : dateUntil // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetDocumentsParamsImpl implements _GetDocumentsParams {
  const _$GetDocumentsParamsImpl(
      {required this.page,
      required this.dateFrom,
      required this.dateUntil,
      @JsonKey(name: 'project_id') required this.projectId});

  factory _$GetDocumentsParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetDocumentsParamsImplFromJson(json);

  @override
  final String page;
  @override
  final String dateFrom;
  @override
  final String dateUntil;
  @override
  @JsonKey(name: 'project_id')
  final String projectId;

  @override
  String toString() {
    return 'GetDocumentsParams(page: $page, dateFrom: $dateFrom, dateUntil: $dateUntil, projectId: $projectId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDocumentsParamsImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.dateFrom, dateFrom) ||
                other.dateFrom == dateFrom) &&
            (identical(other.dateUntil, dateUntil) ||
                other.dateUntil == dateUntil) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, page, dateFrom, dateUntil, projectId);

  /// Create a copy of GetDocumentsParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDocumentsParamsImplCopyWith<_$GetDocumentsParamsImpl> get copyWith =>
      __$$GetDocumentsParamsImplCopyWithImpl<_$GetDocumentsParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetDocumentsParamsImplToJson(
      this,
    );
  }
}

abstract class _GetDocumentsParams implements GetDocumentsParams {
  const factory _GetDocumentsParams(
          {required final String page,
          required final String dateFrom,
          required final String dateUntil,
          @JsonKey(name: 'project_id') required final String projectId}) =
      _$GetDocumentsParamsImpl;

  factory _GetDocumentsParams.fromJson(Map<String, dynamic> json) =
      _$GetDocumentsParamsImpl.fromJson;

  @override
  String get page;
  @override
  String get dateFrom;
  @override
  String get dateUntil;
  @override
  @JsonKey(name: 'project_id')
  String get projectId;

  /// Create a copy of GetDocumentsParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDocumentsParamsImplCopyWith<_$GetDocumentsParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
