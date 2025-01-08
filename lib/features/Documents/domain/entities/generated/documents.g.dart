// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../documents.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentImpl _$$DocumentImplFromJson(Map<String, dynamic> json) =>
    _$DocumentImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      path: json['path'] as String,
    );

Map<String, dynamic> _$$DocumentImplToJson(_$DocumentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'path': instance.path,
    };
