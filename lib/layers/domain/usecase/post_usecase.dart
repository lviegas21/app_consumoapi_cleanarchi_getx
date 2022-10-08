import 'package:clean_arch/layers/domain/entities/entities.dart';

abstract class PostUsecase {
  Future<PostEntity> getPosts();
}
