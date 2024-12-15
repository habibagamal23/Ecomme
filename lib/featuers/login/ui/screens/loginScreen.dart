import 'package:easy_localization/easy_localization.dart';
import 'package:ecomm59/AppLogic/Localization/localization_cubit.dart';
import 'package:ecomm59/core/route/approuter.dart';
import 'package:ecomm59/featuers/login/ui/widgets/formUserNameAndPass.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../generated/locale_keys.g.dart';
import '../widgets/ButtonConsumer.dart';
import '../widgets/donthaveAcc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
           context.read<LocalizationCubit>().changeLange(context);
          }, icon: Icon(Icons.language))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(LocaleKeys.Authentication_title_Login.tr()),
            SizedBox(
              height: 20,
            ),
            Formusernameandpass(),
            LoginButtonconsumer(),
            Donthaveacc()
          ],
        ),
      ),
    );
  }
}
