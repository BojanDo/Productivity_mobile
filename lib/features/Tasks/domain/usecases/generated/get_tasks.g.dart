// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../get_tasks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetTasksParamsImpl _$$GetTasksParamsImplFromJson(Map<String, dynamic> json) =>
    _$GetTasksParamsImpl(
      projects: (json['projects'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      status: json['status'] as String?,
      label: json['label'] as String?,
      assigned: (json['assigned'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$GetTasksParamsImplToJson(
        _$GetTasksParamsImpl instance) =>
    <String, dynamic>{
      'projects': instance.projects,
      'status': instance.status,
      'label': instance.label,
      'assigned': instance.assigned,
    };
