import 'package:easy_localization/easy_localization.dart';
import 'package:ecomm59/AppLogic/Localization/localization_cubit.dart';
import 'package:ecomm59/core/network/dio_network/diofactory.dart';
import 'package:ecomm59/featuers/login/data/repo/LoginRepositoryImpl.dart';
import 'package:ecomm59/featuers/login/logic/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/Di/di.dart';
import 'core/network/dio_network/DoiService.dart';
import 'featuers/register/logic/register_cubit.dart';
import 'generated/codegen_loader.g.dart';
import 'myApp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setGetit();
  await EasyLocalization.ensureInitialized();

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

            ],

          child: const MyApp(),
          ),
      ));
}
