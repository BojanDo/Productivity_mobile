// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num).toInt(),
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      email: json['email'] as String,
      profilePicture: json['profile_picture'] as String,
      jobTitle: json['job_title'] as String,
      organizationId: json['organization_id'] as String,
      roleName: json['role_name'] as String,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'email': instance.email,
      'profile_picture': instance.profilePicture,
      'job_title': instance.jobTitle,
      'organization_id': instance.organizationId,
      'role_name': instance.roleName,
    };
