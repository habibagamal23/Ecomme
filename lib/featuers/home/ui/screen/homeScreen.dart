import 'package:easy_localization/easy_localization.dart';
import 'package:ecomm59/featuers/home/ui/widgets/BannerCarouselSlider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../generated/locale_keys.g.dart';
import '../widgets/TitleWithActions.dart';
import '../widgets/category/CategoryBuilder.dart';
import '../widgets/product/productBulider.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 40.h,
            ),
            Text("Home"),
            BannerCarouselSlider(),
            SizedBox(
              height: 10.h,
            ),
            const CategoryBuilder(),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              height: 10.h,
            ),
            TitleWithActions(title: 'New Arrivels', onviewPressed: () {  },),
            Productbulider()
          ],
        ),
      ),
    );
  }
}
