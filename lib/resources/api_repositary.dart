import 'package:machine_test/model/apimodel.dart';
import 'package:machine_test/resources/api_provider.dart';

class ApiRepository {
  final _provider = ApiProvider();

  Future<ApiModel?> getMyDebts() {
    return _provider.getMyDebts();
  }
}

class NetworkError extends Error {}
