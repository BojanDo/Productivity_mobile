// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../get_documents.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetDocumentsParamsImpl _$$GetDocumentsParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$GetDocumentsParamsImpl(
      page: (json['page'] as num?)?.toInt() ?? 1,
      dateFrom: json['dateFrom'] as String?,
      dateUntil: json['dateUntil'] as String?,
      projectId: (json['project_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GetDocumentsParamsImplToJson(
        _$GetDocumentsParamsImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'dateFrom': instance.dateFrom,
      'dateUntil': instance.dateUntil,
      'project_id': instance.projectId,
    };
