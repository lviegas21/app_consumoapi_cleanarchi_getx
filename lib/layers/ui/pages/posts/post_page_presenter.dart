// ignore_for_file: non_constant_identifier_names

import 'package:clean_arch/layers/domain/entities/entities.dart';
import 'package:get/get.dart';

abstract class PostPagePresenter {
  RxBool get isLoading;
  PostEntity? postEntity;
  Future<void> getPost1();
}
