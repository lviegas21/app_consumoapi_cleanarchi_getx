import 'package:equatable/equatable.dart';

class PostEntity extends Equatable {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  PostEntity(this.userId, this.id, this.title, this.body);

  List get props => [userId, id, title, body];
}
