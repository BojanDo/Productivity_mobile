// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../update_project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateProjectParamsImpl _$$UpdateProjectParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateProjectParamsImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      profilePicture: json['profile_picture'] as String?,
    );

Map<String, dynamic> _$$UpdateProjectParamsImplToJson(
        _$UpdateProjectParamsImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'profile_picture': instance.profilePicture,
    };
