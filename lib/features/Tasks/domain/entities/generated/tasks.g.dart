// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../tasks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      id: (json['id'] as num).toInt(),
      taskNumber: json['task_number'] as String,
      title: json['title'] as String,
      description: (json['description'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      status: $enumDecode(_$StatusEnumMap, json['status']),
      label: $enumDecode(_$LabelEnumMap, json['label']),
      date: json['due_date'] as String,
      project: Project.fromJson(json['project'] as Map<String, dynamic>),
      users: paginatedListUserFromJson(
          json['assigned_users'] as Map<String, dynamic>),
      documents: paginatedListDocumentFromJson(
          json['documents'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'task_number': instance.taskNumber,
      'title': instance.title,
      'description': instance.description,
      'status': _$StatusEnumMap[instance.status]!,
      'label': _$LabelEnumMap[instance.label]!,
      'due_date': instance.date,
      'project': instance.project,
      'assigned_users': paginatedListUserToJson(instance.users),
      'documents': paginatedListDocumentToJson(instance.documents),
    };

const _$StatusEnumMap = {
  Status.todo: 'ToDo',
  Status.inProgress: 'In Progress',
  Status.review: 'Review',
  Status.test: 'Test',
  Status.closed: 'Closed',
};

const _$LabelEnumMap = {
  Label.bug: 'BUG',
  Label.feature: 'FEATURE',
  Label.maintenance: 'MAINTENANCE',
};

_$TaskSlimImpl _$$TaskSlimImplFromJson(Map<String, dynamic> json) =>
    _$TaskSlimImpl(
      id: (json['id'] as num).toInt(),
      projectId: (json['project_id'] as num).toInt(),
      title: json['title'] as String,
      status: $enumDecode(_$StatusEnumMap, json['status']),
      label: $enumDecode(_$LabelEnumMap, json['label']),
      date: json['due_date'] as String,
      taskNumber: json['task_number'] as String,
      assigned: (json['assigned'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$TaskSlimImplToJson(_$TaskSlimImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'project_id': instance.projectId,
      'title': instance.title,
      'status': _$StatusEnumMap[instance.status]!,
      'label': _$LabelEnumMap[instance.label]!,
      'due_date': instance.date,
      'task_number': instance.taskNumber,
      'assigned': instance.assigned,
    };
