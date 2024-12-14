import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/route/approuter.dart';

class Haveacc extends StatelessWidget {
  const Haveacc({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          context.push(ConstantRouter.loginscreen);
        },
        child: Text("Go to Login "));
  }
}
