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
  Future post(String url, Map<String, dynamic>? body) async {
    try {
      final res = await dio.post(url, data: body);
      return res.data;
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }
}
