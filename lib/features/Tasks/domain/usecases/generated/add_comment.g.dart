// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../add_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddCommentParamsImpl _$$AddCommentParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$AddCommentParamsImpl(
      description: json['description'] as String,
      taskId: (json['task_id'] as num).toInt(),
    );

Map<String, dynamic> _$$AddCommentParamsImplToJson(
        _$AddCommentParamsImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'task_id': instance.taskId,
    };
