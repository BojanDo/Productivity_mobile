// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../update_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateUserParamsImpl _$$UpdateUserParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateUserParamsImpl(
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      profilePicture: json['profile_picture'] as String?,
      jobTitle: json['job_title'] as String,
    );

Map<String, dynamic> _$$UpdateUserParamsImplToJson(
        _$UpdateUserParamsImpl instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'profile_picture': instance.profilePicture,
      'job_title': instance.jobTitle,
    };
