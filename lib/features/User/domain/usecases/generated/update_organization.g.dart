// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../update_organization.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateOrganizationParamsImpl _$$UpdateOrganizationParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateOrganizationParamsImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      profilePicture: json['profile_picture'] as String,
    );

Map<String, dynamic> _$$UpdateOrganizationParamsImplToJson(
        _$UpdateOrganizationParamsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'profile_picture': instance.profilePicture,
    };
