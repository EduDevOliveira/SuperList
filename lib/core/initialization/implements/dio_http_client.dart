// core/network/dio_http_client.dart
import 'package:dio/dio.dart';
import 'package:supertodolist/core/config/config.dart';
import '../interfaces/i_http_client.dart';
import 'api_exceptions.dart';

class DioHttpClient implements IHttpClient {
  final Dio dio;
  final Config config;

  DioHttpClient(this.config) : dio = Dio() {
    dio.options = BaseOptions(
      baseUrl: config.apiBaseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    );
    dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
      ),
    );
  }

  @override
  Future<dynamic> get(String path, {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.get(path, queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      throw ApiException(_handleError(e));
    }
  }

  @override
  Future<dynamic> post(String path, {data}) async {
    try {
      final response = await dio.post(path, data: data);
      return response.data;
    } on DioException catch (e) {
      throw ApiException(_handleError(e));
    }
  }

  @override
  Future<dynamic> put(String path, {data}) async {
    try {
      final response = await dio.put(path, data: data);
      return response.data;
    } on DioException catch (e) {
      throw ApiException(_handleError(e));
    }
  }

  @override
  Future<dynamic> delete(String path, {data}) async {
    try {
      final response = await dio.delete(path, data: data);
      return response.data;
    } on DioException catch (e) {
      throw ApiException(_handleError(e));
    }
  }

  String _handleError(DioException e) {
    if (e.type == DioExceptionType.connectionTimeout) return 'Tempo de conexão esgotado';
    if (e.type == DioExceptionType.receiveTimeout) return 'Tempo de resposta esgotado';
    if (e.response != null) return 'Erro: ${e.response?.statusCode}';
    return e.message ?? 'Erro desconhecido';
  }
}
