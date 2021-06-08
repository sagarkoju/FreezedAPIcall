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

_$_Comment _$_$_CommentFromJson(Map<String, dynamic> json) {
  return _$_Comment(
    postId: json['postId'] as int? ?? -1,
    id: json['id'] as int? ?? -1,
    name: json['name'] as String? ?? '',
    email: json['email'] as String? ?? '',
    body: json['body'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_CommentToJson(_$_Comment instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'body': instance.body,
    };

_$_Todos _$_$_TodosFromJson(Map<String, dynamic> json) {
  return _$_Todos(
    id: json['id'] as int? ?? -1,
    userId: json['userId'] as int? ?? -1,
    title: json['title'] as String? ?? '',
    completed: json['completed'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_TodosToJson(_$_Todos instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
      'completed': instance.completed,
    };
