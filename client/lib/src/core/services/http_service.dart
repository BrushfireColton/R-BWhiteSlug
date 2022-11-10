import 'package:client/src/core/services/http_service_response.dart';
import 'package:client/src/domain/bungie_token.dart';
import 'package:dio/dio.dart';

abstract class Service {
  final BungieToken authToken;
  final Dio dio;
  Service(this.authToken, this.dio);

  Options _getRequestOptions() {
    final headers = <String, dynamic>{
      'Authorization': 'Bearer ${authToken.accessToken}',
      'Content-Type': 'application/json',
    };

    return Options(headers: headers);
  }

  Future<HttpServiceResponse<T?>> get<T>(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await dio.get(endpoint, options: _getRequestOptions());
    return HttpServiceResponse(
      response.data,
      response.headers.map,
      response.statusMessage,
      response.statusCode,
    );
  }

  Future<HttpServiceResponse<T>> post<T>(
    T? data,
    String endpoint, {
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await dio.post(endpoint, options: _getRequestOptions());
    return HttpServiceResponse(
      response.data,
      response.headers.map,
      response.statusMessage,
      response.statusCode,
    );
  }
}
