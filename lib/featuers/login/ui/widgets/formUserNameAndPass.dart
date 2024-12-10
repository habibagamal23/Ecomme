import 'package:ecomm59/featuers/login/logic/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/CustomFormTextField.dart';

class Formusernameandpass extends StatelessWidget {
  const Formusernameandpass({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();
    return Form(
        key: cubit.key,
        child: Column(
          children: [
            CustomFormTextField(
              hintText: 'UserNAme',
              labelText: 'UserNAme',
              controller: cubit.username,
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomFormTextField(
              hintText: 'Password',
              labelText: 'Password',
              controller: cubit.pass,
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ));
  }
}
