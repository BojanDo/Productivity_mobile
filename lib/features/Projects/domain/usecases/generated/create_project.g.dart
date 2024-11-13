// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../create_project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateOrganizationParamsImpl _$$CreateOrganizationParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateOrganizationParamsImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      profilePicture: json['profile_picture'] as String,
    );

Map<String, dynamic> _$$CreateOrganizationParamsImplToJson(
        _$CreateOrganizationParamsImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'profile_picture': instance.profilePicture,
    };
