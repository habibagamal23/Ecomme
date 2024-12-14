
import '../../../../core/network/ApiResult.dart';
import '../../../../core/network/Api_constant.dart';
import '../../../../core/network/apiConsumer.dart';
import '../models/RegisterRequestModel.dart';
import '../models/RegisterResponseModel.dart';
import 'RegisterRepository.dart';

class RegisterRepositoryImpl extends RegisterRepository{
  ApiConsumer apiConsumer;
  RegisterRepositoryImpl(this.apiConsumer);
  @override
  Future<ApiResult<RegisterResponseModel>>  registerUser({required RegisterRequestModel registerRequestBody}) async{
    try{
      var data= await apiConsumer.post(ApiConstants.register, registerRequestBody.toJson());
      return ApiResult.success(RegisterResponseModel.fromJson(data));
    }catch(e){
      return ApiResult.error(e.toString());
    }
  }}