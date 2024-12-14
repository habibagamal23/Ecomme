import 'package:ecomm59/core/route/approuter.dart';
import 'package:ecomm59/featuers/login/ui/widgets/formUserNameAndPass.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/ButtonConsumer.dart';
import '../widgets/donthaveAcc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome Back"),
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
