// ignore_for_file: prefer_const_constructors

import 'package:clean_arch/layers/main/factory/page/post_page_factory.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'layers/ui/pages/posts/post.dart';

void main() {
  runApp(AppConsumo());
}

class AppConsumo extends StatelessWidget {
  const AppConsumo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Consumo Api',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: makePostPage,
          transition: Transition.fade,
        )
      ],
    );
  }
}
