import 'package:bloc/bloc.dart';
import 'package:ecomm59/featuers/login/data/models/LoginRequstBodyModel.dart';
import 'package:ecomm59/featuers/login/data/repo/LoginRepostiry.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

import '../data/models/RegisterRequestModel.dart';
import '../data/models/RegisterResponseModel.dart';
import '../data/repo/RegisterRepository.dart';

part 'register_state.dart';
class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.registerRepository) : super(RegisterInitial());
  RegisterRepository registerRepository;
  TextEditingController userNameController =TextEditingController();
  TextEditingController emailController =TextEditingController();
  TextEditingController passwordController =TextEditingController();
  GlobalKey<FormState> formKey= GlobalKey<FormState>();


  Future register()async{
    emit(RegisterLoading());
    if(!formKey.currentState!.validate())return;


    try{
      RegisterRequestModel registerRequestBody = RegisterRequestModel(userNameController.text,
          emailController.text, passwordController.text);
      final result= await registerRepository.registerUser(registerRequestBody: registerRequestBody);
      if(result.isSuccess){
        emit(RegisterSuccess(result.data!));
      }else{
        emit(RegisterError(result.error!));
      }
    }catch(e){

      emit(RegisterError(e.toString()));
    }


  }


}
