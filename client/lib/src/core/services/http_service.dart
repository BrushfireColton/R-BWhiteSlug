import 'package:client/src/core/services/http_service_config.dart';
import 'package:client/src/core/services/http_service_response.dart';
import 'package:dio/dio.dart';

abstract class HttpService {
  final HttpServiceConfig serviceConfig;
  final Dio dio;
  HttpService(this.serviceConfig, this.dio);

  Options _getRequestOptions() {
    final headers = <String, dynamic>{
      'Authorization': 'Bearer ${serviceConfig.bungieToken.accessToken}',
      'Content-Type': 'application/json',
    };

    return Options(headers: headers);
  }

  Future<HttpServiceResponse<T?>> get<T>(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await dio.get('${serviceConfig.baseUrl}$endpoint', options: _getRequestOptions());
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
