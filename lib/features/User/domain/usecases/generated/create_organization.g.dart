// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../create_organization.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateOrganizationParamsImpl _$$CreateOrganizationParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateOrganizationParamsImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      profilePicture: json['profile_picture'] as String,
    );

Map<String, dynamic> _$$CreateOrganizationParamsImplToJson(
        _$CreateOrganizationParamsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'profile_picture': instance.profilePicture,
    };
