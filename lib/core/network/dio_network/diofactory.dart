import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../Api_constant.dart';

class DioFcatory {
  Dio? _dio;

  Dio get dio {
    if (_dio != null) {
      return _dio!;
    }
    _dio = Dio(BaseOptions())
      ..interceptors.add(PrettyDioLogger(
        responseBody: true,
        requestBody: true,
        error: true,
        request: true,
      ));
    return _dio!;
  }
}
