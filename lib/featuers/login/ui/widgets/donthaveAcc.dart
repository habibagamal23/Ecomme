import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/route/approuter.dart';

class Donthaveacc extends StatelessWidget {
  const Donthaveacc({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          context.push(ConstantRouter.registerscreen);
        },
        child: Text("Go to Create Acc"));
  }
}
