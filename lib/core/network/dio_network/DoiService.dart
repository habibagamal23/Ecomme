import 'package:dio/dio.dart';
import 'package:ecomm59/core/network/apiConsumer.dart';

import '../api_error.dart';

class DioService implements ApiConsumer {
  final Dio dio;

  DioService({required this.dio});

  @override
  Future get(String url, {Map<String, dynamic>? queryParameters}) async {
    try {
      var response = await dio.get(url, queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  @override
  Future post(String url, Map<String, dynamic>? body,
      {Options? options}) async {
    try {
      final res = await dio.post(url, data: body, options: options);
      return res.data;
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  @override
  Future delete(String url, {Options? options}) async {
    try {
      final res = await dio.delete(url, options: options);
      return res.data;
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  @override
  Future put(String url, Map<String, dynamic>? body, {Options? options}) async {
    try {
      final res = await dio.put(url, data: body, options: options);
      return res.data;
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }
}
