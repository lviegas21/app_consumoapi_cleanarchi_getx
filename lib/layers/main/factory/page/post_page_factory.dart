// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

import '../../../ui/pages/posts/post.dart';
import 'package:get/get.dart';

import 'page.dart';

Widget makePostPage() {
  final presenter = Get.put<PostPagePresenter>(makeGetxPostPage());
  return PostPage(presenter);
}
