import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'users.freezed.dart';
part 'users.g.dart';

@freezed //Once this abstract Data User is made, we make a mixin with the class that Freezed will generate.
//We call this generated class _$Data first because we make it private with_ so that it can only be accessed..
// from its own file and
// we also use$because it is a convenience to indicate this symbol so that the generated classes
//don't have the same name of the classes that we create.
class Data with _$Data {
  const factory Data({
    @Default(-1) int id,
    @Default(-1) int albumId,
    @Default('') String title,
    @Default('') String url,
    @Default('') String thumbnailUrl,
  }) = _Data;
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Comment with _$Comment {
  const factory Comment({
    @Default(-1) int postId,
    @Default(-1) int id,
    @Default('') String name,
    @Default('') String email,
    @Default('') String body,
  }) = _Comment;
  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}

@freezed
class Todos with _$Todos {
  const factory Todos({
    @Default(-1) int id,
    @Default(-1) int userId,
    @Default('') String title,
    @Default('') String completed,
  }) = _Todos;
  factory Todos.fromJson(Map<String, dynamic> json) => _$TodosFromJson(json);
}
