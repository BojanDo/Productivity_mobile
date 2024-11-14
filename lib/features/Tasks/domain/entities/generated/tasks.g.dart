// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../tasks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      id: (json['id'] as num).toInt(),
      taskNumber: json['task_number'] as String,
      title: json['title'] as String,
      description: json['description'] as Map<String, dynamic>,
      status: json['status'] as String,
      label: json['label'] as String,
      date: json['date'] as String,
      project: Project.fromJson(json['project'] as Map<String, dynamic>),
      users: paginatedListUserFromJson(
          json['assigned_users'] as Map<String, dynamic>),
      comments: paginatedListCommentFromJson(
          json['comments'] as Map<String, dynamic>),
      documents: paginatedListDocumentFromJson(
          json['documents'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'task_number': instance.taskNumber,
      'title': instance.title,
      'description': instance.description,
      'status': instance.status,
      'label': instance.label,
      'date': instance.date,
      'project': instance.project,
      'assigned_users': paginatedListUserToJson(instance.users),
      'comments': paginatedListCommentToJson(instance.comments),
      'documents': paginatedListDocumentToJson(instance.documents),
    };

_$TaskSlimImpl _$$TaskSlimImplFromJson(Map<String, dynamic> json) =>
    _$TaskSlimImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      status: json['status'] as String,
      label: json['label'] as String,
      date: json['date'] as String,
      taskNumber: json['task_number'] as String,
    );

Map<String, dynamic> _$$TaskSlimImplToJson(_$TaskSlimImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'status': instance.status,
      'label': instance.label,
      'date': instance.date,
      'task_number': instance.taskNumber,
    };
