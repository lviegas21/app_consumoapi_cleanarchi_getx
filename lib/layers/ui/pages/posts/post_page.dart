// ignore_for_file: prefer_const_constructors, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'post.dart';

class PostPage extends StatelessWidget {
  final PostPagePresenter postPagePresenter;
  PostPage(this.postPagePresenter);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Obx(
        () => SingleChildScrollView(
          child: postPagePresenter.isLoading == true
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListTile(
                  title: Text(postPagePresenter.postEntity!.title ??
                      'Não está puxando'),
                  subtitle: Text(postPagePresenter.postEntity!.body ??
                      'Não está puxando descricao'),
                ),
        ),
      ),
    );
  }
}
