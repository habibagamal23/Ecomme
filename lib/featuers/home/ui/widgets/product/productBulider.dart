import 'package:ecomm59/featuers/home/logic/home_cubit.dart';
import 'package:ecomm59/featuers/home/ui/widgets/product/productItem.dart';
import 'package:ecomm59/featuers/home/ui/widgets/product/productShimmmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Productbulider extends StatelessWidget {
  const Productbulider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      if (state is HomeLoading) {
        return GridView.builder(
          shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 2.sp,
              crossAxisSpacing: 2.sp,
              childAspectRatio: 0.64.sp,
            ),
            itemCount: 6,
            itemBuilder: (context, index) {
              return ProductShimmerLoading() ;
            });
      }
      if (state is HomeSucces) {
        return GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8.sp,
              crossAxisSpacing: 8.sp,
              childAspectRatio: 0.44.sp,
            ),
            itemCount: state.products.length,
            itemBuilder: (context, index) {
              return ProductCard(product: state.products[index]) ;
            });
      }
      if(state is HomeError){
        return Text(state.err);
      }
      return Text("No Product");
    });
  }
}
