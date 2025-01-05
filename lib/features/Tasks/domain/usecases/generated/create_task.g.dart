// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../create_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateTaskParamsImpl _$$CreateTaskParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateTaskParamsImpl(
      title: json['title'] as String,
      description: (json['description'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      status: json['status'] as String,
      label: json['label'] as String,
      date: json['date'] as String,
      projectId: (json['project_id'] as num).toInt(),
      assigned: (json['assigned'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$CreateTaskParamsImplToJson(
        _$CreateTaskParamsImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'status': instance.status,
      'label': instance.label,
      'date': instance.date,
      'project_id': instance.projectId,
      'assigned': instance.assigned,
      'attachments': instance.attachments,
    };
