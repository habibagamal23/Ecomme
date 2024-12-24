import 'package:easy_localization/easy_localization.dart';
import 'package:ecomm59/AppLogic/Localization/localization_cubit.dart';
import 'package:ecomm59/core/chachHelper/chachhelpe.dart';
import 'package:ecomm59/core/network/dio_network/DoiService.dart';
import 'package:ecomm59/core/network/dio_network/diofactory.dart';
import 'package:ecomm59/featuers/adress/cubit/location_cubit.dart';
import 'package:ecomm59/featuers/home/data/HomeRepostry/homeRepoImpl.dart';
import 'package:ecomm59/featuers/home/logic/home_cubit.dart';
import 'package:ecomm59/featuers/login/data/repo/LoginRepositoryImpl.dart';
import 'package:ecomm59/featuers/login/logic/login_cubit.dart';
import 'package:ecomm59/featuers/payment/logic/payment_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import 'core/Di/di.dart';
import 'core/network/Api_constant.dart';
import 'core/route/approuter.dart';
import 'featuers/register/logic/register_cubit.dart';
import 'generated/codegen_loader.g.dart';
import 'myApp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setGetit();
  Stripe.publishableKey = ApiConstants.stripePublishableKey;
  await EasyLocalization.ensureInitialized();
  await SharedPreferencesHelper.init();
   checkLogin();
  runApp(

      EasyLocalization(
        supportedLocales: [Locale("en"), Locale("ar")],
        path:"assets/translations" ,
        fallbackLocale: Locale("en"),
        assetLoader: CodegenLoader(),
        child: MultiBlocProvider(
            providers: [
        BlocProvider(create: (context) => getit<LoginCubit>()),
        BlocProvider(create: (context)=>getit<RegisterCubit>()),
              BlocProvider(create: (context)=>LocalizationCubit()),
              BlocProvider(create: (context)=>getit<HomeCubit>()..loadAllData()),
              BlocProvider(create: (context)=>getit<LocationCubit>()..getCurrentlocation()),
              BlocProvider(create: (context)=>getit<PaymentCubit>()),

            ],

          child: const MyApp(),
          ),
      ));
}
