import 'package:clean_arch/layers/presenter/pages/posts/getx_post_presenter.dart';

import '../usecase/usecase.dart';

makeGetxPostPage() =>
    GetxPostPresenter(postUsecase: makeRemoteUsecaseFactory('posts/1'));
