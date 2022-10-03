// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      id: json['id'] as int,
      name: json['name'] as String?,
      createdAt:
          const DatetimeConverter().fromJson(json['createdAt'] as String?),
      updatedAt:
          const DatetimeConverter().fromJson(json['updatedAt'] as String?),
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'createdAt': const DatetimeConverter().toJson(instance.createdAt),
      'updatedAt': const DatetimeConverter().toJson(instance.updatedAt),
    };
