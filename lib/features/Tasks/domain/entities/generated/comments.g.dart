// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../comments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentImpl _$$CommentImplFromJson(Map<String, dynamic> json) =>
    _$CommentImpl(
      id: (json['id'] as num).toInt(),
      date: json['date'] as String,
      description: json['description'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      type: $enumDecode(_$CommentTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$CommentImplToJson(_$CommentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'description': instance.description,
      'user': instance.user,
      'type': _$CommentTypeEnumMap[instance.type]!,
    };

const _$CommentTypeEnumMap = {
  CommentType.comment: 'comment',
  CommentType.notification: 'notification',
};
