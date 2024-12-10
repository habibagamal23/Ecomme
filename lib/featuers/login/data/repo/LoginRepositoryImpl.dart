import 'package:ecomm59/core/network/ApiResult.dart';
import 'package:ecomm59/core/network/apiConsumer.dart';
import 'package:ecomm59/featuers/login/data/models/LoginRequstBodyModel.dart';
import 'package:ecomm59/featuers/login/data/models/LoginResponseModel.dart';
import 'package:ecomm59/featuers/login/data/repo/LoginRepostiry.dart';

import '../../../../core/network/Api_constant.dart';

class LoginRepositoryImpl implements LoginRepository {
  ApiConsumer apiConsumer;
  LoginRepositoryImpl(this.apiConsumer);

  @override
  Future<ApiResult<LoginResponseModel>> loginUser(
      {required LoginRequestBodyModel loginReqBody}) async {
    try {
      final data =
          await apiConsumer.post(ApiConstants.login, loginReqBody.toJson());
      return ApiResult.success(LoginResponseModel.fromJson(data));
    } catch (e) {
      return ApiResult.error("Login error $e");
    }
  }
}
