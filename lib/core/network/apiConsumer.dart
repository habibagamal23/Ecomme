import 'package:dio/dio.dart';

abstract class ApiConsumer {
  Future<dynamic> get(String url, {Map<String, dynamic>? queryParameters});
  Future<dynamic> post(String url, Map<String, dynamic>? body,
      {Options? options});

  Future<dynamic> delete(String url,
      {Options? options});

  Future<dynamic> put(String url, Map<String, dynamic>? body,
      {Options? options});
}
