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
      profilePicture: urlFromJson(json['profile_picture'] as String?),
      jobTitle: json['job_title'] as String,
      organizationId: (json['organization_id'] as num?)?.toInt(),
      roleName:
          $enumDecodeNullable(_$RoleEnumMap, json['role_name']) ?? Role.basic,
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
      'role_name': _$RoleEnumMap[instance.roleName]!,
    };

const _$RoleEnumMap = {
  Role.owner: 'owner',
  Role.developer: 'developer',
  Role.basic: 'basic',
};
