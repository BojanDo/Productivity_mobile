// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../get_notifications.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetNotificationsParamsImpl _$$GetNotificationsParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$GetNotificationsParamsImpl(
      page: json['page'] as String,
      dateFrom: json['dateFrom'] as String,
      dateUntil: json['dateUntil'] as String,
      projectId: json['project_id'] as String,
    );

Map<String, dynamic> _$$GetNotificationsParamsImplToJson(
        _$GetNotificationsParamsImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'dateFrom': instance.dateFrom,
      'dateUntil': instance.dateUntil,
      'project_id': instance.projectId,
    };
