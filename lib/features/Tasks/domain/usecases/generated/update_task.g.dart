// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../update_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateTaskParamsImpl _$$UpdateTaskParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateTaskParamsImpl(
      taskNumber: json['task_number'] as String,
      title: json['title'] as String,
      description: json['description'] as Map<String, dynamic>,
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
      deletedAttachments: (json['deleted_attachments'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$UpdateTaskParamsImplToJson(
        _$UpdateTaskParamsImpl instance) =>
    <String, dynamic>{
      'task_number': instance.taskNumber,
      'title': instance.title,
      'description': instance.description,
      'status': instance.status,
      'label': instance.label,
      'date': instance.date,
      'project_id': instance.projectId,
      'assigned': instance.assigned,
      'attachments': instance.attachments,
      'deleted_attachments': instance.deletedAttachments,
    };
