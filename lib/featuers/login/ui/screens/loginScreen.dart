
import 'package:ecomm59/featuers/login/ui/widgets/formUserNameAndPass.dart';
import 'package:flutter/material.dart';

import '../widgets/ButtonConsumer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Text("Welcome Back"),
            SizedBox(height: 20,),
            Formusernameandpass(),
            LoginButtonconsumer()
          ],
        ),
      ),
    );
  }
}
