import 'package:ecomm59/featuers/home/logic/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/ReusableGridView.dart';
import 'CategoryItem.dart';
import 'loadinghome.dart';

class CategoryBuilder extends StatelessWidget {
  const CategoryBuilder({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<HomeCubit , HomeState>(builder: (context , state){
      if(state is HomeLoading){
        return  const LoadingCategory();
      } if (state is HomeSucces){
        return SizedBox(
          height: 230.h,
          child: ReusableGridView(itemCount: state.categroies.length,
           scrollDirection: Axis.horizontal,
            itemBuilder: (context , index ) {
            return CategoryItem( category: state.categroies[index]);
            },
          ),
        );
      }
      if(state is HomeError){
        return Text (state.err);
      }
      return  const Text("No Data ");
    });
  }
}
