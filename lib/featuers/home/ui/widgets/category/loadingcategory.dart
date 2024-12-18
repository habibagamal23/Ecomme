import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/widgets/ReusableGridView.dart';
import 'catogoryShimmer.dart';

class LoadingCategory extends StatelessWidget {
  const LoadingCategory({super.key});

  @override
  Widget build(BuildContext context) {
      return SizedBox(
        height:  230.h,
        child: ReusableGridView(
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const ShimmerCategoryItem();
          },
        ));
  }
}

