import 'package:flutter_web_sample/util/datetime_convert.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
abstract class Post with _$Post {
  const factory Post({
    // id
    required int id,
    // 名前
    String? name,
    // 作成日
    @DatetimeConverter() DateTime? createdAt,
    // 更新日
    @DatetimeConverter() DateTime? updatedAt,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) =>
      _$PostFromJson(json);
}