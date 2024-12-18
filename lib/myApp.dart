import 'package:easy_localization/easy_localization.dart';
import 'package:ecomm59/AppLogic/Localization/localization_cubit.dart';
import 'package:ecomm59/core/route/approuter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    context.read<LocalizationCubit>().LoadLange(context);
    return BlocBuilder<LocalizationCubit, LocalizationState>(
      builder: (context, state) {
        return ScreenUtilInit(
            minTextAdapt: true,
            designSize: Size(360, 690),
            builder: (context, child) {
              return MaterialApp.router(
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: state.locale,
                routerConfig: AppRouter.router,
                title: 'Flutter Demo',
              );
            });
      },
    );
  }
}
