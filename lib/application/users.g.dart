// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Data _$_$_DataFromJson(Map<String, dynamic> json) {
  return _$_Data(
    id: json['id'] as int? ?? -1,
    albumId: json['albumId'] as int? ?? -1,
    title: json['title'] as String? ?? '',
    url: json['url'] as String? ?? '',
    thumbnailUrl: json['thumbnailUrl'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_DataToJson(_$_Data instance) => <String, dynamic>{
      'id': instance.id,
      'albumId': instance.albumId,
      'title': instance.title,
      'url': instance.url,
      'thumbnailUrl': instance.thumbnailUrl,
    };
