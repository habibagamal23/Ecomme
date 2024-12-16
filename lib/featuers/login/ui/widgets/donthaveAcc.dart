import 'package:easy_localization/easy_localization.dart';
import 'package:ecomm59/generated/locale_keys.g.dart';
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
        child: Text(LocaleKeys.Authentication_already_have_account.tr()));
  }
}
