import 'package:ecomm59/featuers/login/ui/widgets/formUserNameAndPass.dart';
import 'package:flutter/material.dart';

import '../widgets/RegisterButton.dart';
import '../widgets/RegisterForm.dart';
import '../widgets/haveAcc.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("register"),
          RegisterForm(),
          RegisterButton(),
          Haveacc()
        ],
      ),
    );
  }
}
