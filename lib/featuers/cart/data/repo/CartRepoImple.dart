import 'package:ecomm59/core/chachHelper/chachhelpe.dart';
import 'package:ecomm59/core/network/ApiResult.dart';
import 'package:ecomm59/core/network/Api_constant.dart';
import 'package:ecomm59/core/network/apiConsumer.dart';
import 'package:ecomm59/featuers/cart/data/model/CartListResponse.dart';
import 'package:ecomm59/featuers/cart/data/model/CartProduct.dart';
import 'package:ecomm59/featuers/cart/data/repo/CartRepo.dart';

class CartRepoImple implements CartRepo {
  ApiConsumer apiConsumer;
  CartRepoImple(this.apiConsumer);

  Cart? CashCart;
  Map<int, CartProduct> products = {};

  /// call delete fun
  @override
  Future<ApiResult<Cart>> DeleteCart() {
    // TODO: implement DeleteCart
    throw UnimplementedError();
  }

  @override
  Future<ApiResult<Cart>> UpdateProductQantity(
      int productId, int qantity) async {
    try {
      var data = await apiConsumer.put("${ApiConstants.cart}/1", {
        "merge": true,
        "products": [
          {"id": productId, "quantity": qantity}
        ]
      });

      return ApiResult.success(Cart.fromJson(data));
    } catch (e) {
      return ApiResult.error("No cart by this id ");
    }
  }

  int? userid = SharedPreferencesHelper.getId();

  @override
  Future<ApiResult<Cart>> addProduct(CartProduct cartProduct) async {
    try {
      var data = await apiConsumer
          .post("${ApiConstants.cart}${ApiConstants.endpoindAddcart}", {
        "userId": userid,
        "products": [
          {"id": cartProduct.id, "quantity": cartProduct.quantity}
        ]
      });

      return ApiResult.success(Cart.fromJson(data!));
    } catch (e) {
      return ApiResult.error("No cart by this id ");
    }
  }

  @override
  Future<ApiResult<Cart>> getCart() async {
    try {
      var data = await apiConsumer.get("${ApiConstants.cart}/1");
      return ApiResult.success(Cart.fromJson(data!));
    } catch (e) {
      return ApiResult.error("No product add  by this id ");
    }
  }

  /// call put and add qaunity by 0
  @override
  Future<ApiResult<Cart>> removeProdctut(int productId) {
    // TODO: implement removeProdctut
    throw UnimplementedError();
  }
}
