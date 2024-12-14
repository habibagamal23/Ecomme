import 'package:ecomm59/core/network/ApiResult.dart';
import 'package:ecomm59/featuers/login/data/models/LoginResponseModel.dart';

import '../models/RegisterRequestModel.dart';
import '../models/RegisterResponseModel.dart';

abstract class RegisterRepository {
  Future<ApiResult<RegisterResponseModel>> registerUser({required RegisterRequestModel registerRequestBody});

}