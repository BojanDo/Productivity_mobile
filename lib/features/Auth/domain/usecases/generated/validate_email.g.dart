// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../validate_email.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ValidateEmailParamsImpl _$$ValidateEmailParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidateEmailParamsImpl(
      email: json['email'] as String,
      accessKey: json['access_key'] as String? ?? kMailBoxApiKey,
      smtp: (json['smtp'] as num?)?.toInt() ?? 1,
      format: (json['format'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ValidateEmailParamsImplToJson(
        _$ValidateEmailParamsImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'access_key': instance.accessKey,
      'smtp': instance.smtp,
      'format': instance.format,
    };
