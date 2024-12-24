import 'package:ecomm59/core/network/ApiResult.dart';
import 'package:ecomm59/featuers/cart/data/model/CartListResponse.dart';
import 'package:ecomm59/featuers/cart/data/model/CartProduct.dart';

abstract class CartRepo {
  Future<ApiResult<Cart>> getCart();
  Future<ApiResult<Cart>> addProduct(CartProduct cart);
  Future<ApiResult<Cart>> UpdateProductQantity(int productId, int qantity);
  Future<ApiResult<Cart>> removeProdctut(int productId);
  Future<ApiResult<Cart>> DeleteCart();
}
