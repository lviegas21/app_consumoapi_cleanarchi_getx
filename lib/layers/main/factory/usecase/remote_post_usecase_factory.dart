import '../../../data/usecase/usecase.dart';
import '../http/http.dart';

RemoteUsecaseData makeRemoteUsecaseFactory(String path) =>
    RemoteUsecaseData(httpClient: makeHttpAdapter(), url: makeApiUrl(path));
