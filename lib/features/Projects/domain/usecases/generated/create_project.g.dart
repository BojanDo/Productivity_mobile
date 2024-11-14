// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../create_project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateProjectParamsImpl _$$CreateProjectParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateProjectParamsImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      profilePicture: json['profile_picture'] as String?,
    );

Map<String, dynamic> _$$CreateProjectParamsImplToJson(
        _$CreateProjectParamsImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'profile_picture': instance.profilePicture,
    };
