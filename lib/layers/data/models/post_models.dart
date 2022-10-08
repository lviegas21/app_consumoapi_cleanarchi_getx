import 'package:clean_arch/layers/domain/entities/entities.dart';

class PostModels {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModels(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  factory PostModels.fromJson(Map json) {
    return PostModels(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }

  PostEntity toEntity() {
    return PostEntity(userId, id, title, body);
  }
}
