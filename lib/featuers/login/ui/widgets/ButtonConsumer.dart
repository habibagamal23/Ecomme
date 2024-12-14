import 'package:ecomm59/featuers/login/logic/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/CustomButton.dart';
import '../../../../core/widgets/dialog.dart';
import '../../../../core/widgets/Loading_widget.dart';

class LoginButtonconsumer extends StatelessWidget {
  const LoginButtonconsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(builder: (context, state) {
      if (state is LoginLoading) {
        return PrettyLoadingWidget();
      }
      return CustomButton(
        text: "Login",
        onPressed: () {
          context.read<LoginCubit>().loginUser();
        },
      );
    }, listener: (context, state) {
      if (state is LoginSuccess) {
        DialogManager.showSuccessDialog(
            context: context,
            title: "LoginSucces",
            description: "Wlcome ${state.loginResponseModel.username}",
            onPress: () {});
      }
      if (state is LoginError) {
        DialogManager.showErrorDialog(
            context: context,
            title: "LoginError",
            description: "have error  ${state.error}",
            onPress: () {});
      }
    });
  }
}
