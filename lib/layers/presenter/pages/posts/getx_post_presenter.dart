// ignore_for_file: avoid_print

import 'package:get/get.dart';

import '../../../domain/entities/entities.dart';
import '../../../domain/usecase/usecase.dart';
import '../../../ui/pages/posts/post.dart';

class GetxPostPresenter extends GetxController implements PostPagePresenter {
  final PostUsecase postUsecase;

  GetxPostPresenter({required this.postUsecase});

  @override
  RxBool isLoading = false.obs;

  @override
  void onInit() async {
    await getPost1();
    super.onInit();
  }

  @override
  PostEntity? postEntity;

  @override
  Future<void> getPost1() async {
    try {
      isLoading.value = true;
      postEntity = await postUsecase.getPosts();
      isLoading.value = false;
    } catch (e) {
      print(e);
    }
  }
}
