import 'package:ecomm59/core/network/ApiResult.dart';

abstract class HomeRepo{
  Future <ApiResult<List<String>>> getCategory();
}