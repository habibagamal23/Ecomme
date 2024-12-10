import 'package:ecomm59/core/network/ApiResult.dart';
import 'package:ecomm59/featuers/login/data/models/LoginResponseModel.dart';

import '../models/LoginRequstBodyModel.dart';

abstract class LoginRepository {
  Future<ApiResult<LoginResponseModel>> loginUser(
      {required LoginRequestBodyModel loginReqBody});
}
