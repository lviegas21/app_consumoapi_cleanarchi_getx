import '../../domain/entities/entities.dart';
import '../../domain/helpers/helpers.dart';
import '../../domain/usecase/usecase.dart';
import '../http/http.dart';
import '../models/models.dart';

class RemoteUsecaseData implements PostUsecase {
  final HttpClient httpClient;
  final String url;

  RemoteUsecaseData({required this.httpClient, required this.url});
  @override
  Future<PostEntity> getPosts() async {
    try {
      final response = await httpClient.request(url: url, method: 'get');
      return PostModels.fromJson(response).toEntity();
    } on HttpError catch (error) {
      throw error == HttpError.unauthorized
          ? DomainError.accessDenied
          : DomainError.unexpected;
    }
  }
}
