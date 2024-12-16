import 'package:bloc/bloc.dart';
import 'package:ecomm59/featuers/login/data/models/LoginRequstBodyModel.dart';
import 'package:ecomm59/featuers/login/data/repo/LoginRepostiry.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

import '../../../core/chachHelper/chachhelpe.dart';
import '../data/models/LoginResponseModel.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepository) : super(LoginInitial());
  LoginRepository loginRepository;
  TextEditingController username = TextEditingController();
  TextEditingController pass = TextEditingController();
  GlobalKey<FormState> key = GlobalKey<FormState>();

 Future loginUser() async {
    emit(LoginLoading());
    if (!key.currentState!.validate()) {
      return;
    }
    try {
      var loginReqBody =
          LoginRequestBodyModel(username: username.text, password: pass.text);
      final result =
          await loginRepository.loginUser(loginReqBody: loginReqBody);


      if (result.isSuccess) {
       await  SharedPreferencesHelper.setId(result.data!.id!);
        emit(LoginSuccess(result.data!));
      } else {
        emit(LoginError(result.error!));
      }
    } catch (e) {
      emit(LoginError(" Login error ${e.toString()}"));
    }
  }
}
