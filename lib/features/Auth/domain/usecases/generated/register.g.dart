// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterParamsImpl _$$RegisterParamsImplFromJson(Map<String, dynamic> json) =>
    _$RegisterParamsImpl(
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      emial: json['emial'] as String,
      profilePicture: json['profile_picture'] as String,
      password: json['password'] as String,
      jobTitle: json['job_title'] as String,
    );

Map<String, dynamic> _$$RegisterParamsImplToJson(
        _$RegisterParamsImpl instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'emial': instance.emial,
      'profile_picture': instance.profilePicture,
      'password': instance.password,
      'job_title': instance.jobTitle,
    };
