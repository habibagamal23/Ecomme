import 'package:easy_localization/easy_localization.dart';
import 'package:ecomm59/featuers/login/logic/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/CustomFormTextField.dart';
import '../../../../generated/locale_keys.g.dart';

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
              hintText: LocaleKeys.Authentication_user_name.tr(),
              labelText: LocaleKeys.Authentication_user_name.tr(),
              controller: cubit.username,
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomFormTextField(
              hintText: LocaleKeys.Authentication_password.tr(),
              labelText: LocaleKeys.Authentication_password.tr(),
              controller: cubit.pass,
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ));
  }
}
