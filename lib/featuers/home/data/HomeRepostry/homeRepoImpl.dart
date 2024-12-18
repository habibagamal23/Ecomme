import 'package:ecomm59/core/network/ApiResult.dart';
import 'package:ecomm59/core/network/apiConsumer.dart';
import 'package:ecomm59/featuers/home/data/models/productResponse.dart';

import '../../../../core/network/Api_constant.dart';
import 'HomeRepo.dart';

class HomeRepoImpl implements HomeRepo {
  ApiConsumer apiConsumer;
  HomeRepoImpl(this.apiConsumer);

  @override
  Future<ApiResult<List<String>>> getCategory() async {
    try {
      var data = await apiConsumer.get(ApiConstants.categoryList);
      return ApiResult.success(List.from(data));
    } catch (e) {
      return ApiResult.error("Error loading data category $e");
    }
  }

  @override
  Future<ApiResult<ProductResponse>> getNewArrivelsProduct() async {
    try {
      var data = await apiConsumer.get(ApiConstants.product,
          queryParameters: {"sortBy": "title", "order": "asc"});
      return ApiResult.success(ProductResponse.fromJson(data));
    } catch (e) {
      return ApiResult.error("product error $e");
    }
  }
}
