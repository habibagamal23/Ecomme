import 'package:ecomm59/featuers/login/logic/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/CustomFormTextField.dart';
import '../../logic/register_cubit.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();
    return Form(
        key: cubit.formKey,
        child: Column(
          children: [
            CustomFormTextField(
                hintText: "username",
                labelText: "username",
                controller: cubit.userNameController),
            SizedBox(
              height: 20.h,
            ),
            CustomFormTextField(
                hintText: "email",
                labelText: "email",
                controller: cubit.emailController),
            SizedBox(
              height: 20.h,
            ),
            CustomFormTextField(
                hintText: "password",
                labelText: "password",
                controller: cubit.passwordController),
            SizedBox(
              height: 20.h,
            )
          ],
        ));
  }
}
