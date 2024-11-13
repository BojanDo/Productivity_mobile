// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../paginated_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginatedListImpl<T> _$$PaginatedListImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$PaginatedListImpl<T>(
      items: (json['items'] as List<dynamic>).map(fromJsonT).toList(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$$PaginatedListImplToJson<T>(
  _$PaginatedListImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'items': instance.items.map(toJsonT).toList(),
      'total': instance.total,
    };
