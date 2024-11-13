// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../notifications.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationImpl _$$NotificationImplFromJson(Map<String, dynamic> json) =>
    _$NotificationImpl(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      taskId: json['task_id'] as String,
      description: json['description'] as String,
      date: json['date'] as String,
    );

Map<String, dynamic> _$$NotificationImplToJson(_$NotificationImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'task_id': instance.taskId,
      'description': instance.description,
      'date': instance.date,
    };
