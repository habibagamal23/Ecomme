
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../generated/locale_keys.g.dart';
import '../widgets/CategoryBuilder.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
      SizedBox(height: 40.h,),
        Text(LocaleKeys.homepage_home_page.tr()),
         const  CategoryBuilder()
        ],
      ),
    );
  }
}
