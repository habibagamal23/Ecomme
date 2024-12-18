import 'package:ecomm59/core/network/ApiResult.dart';

import '../models/productResponse.dart';

abstract class HomeRepo{
  Future <ApiResult<List<String>>> getCategory();

  Future <ApiResult<ProductResponse>>getNewArrivelsProduct();

}