import 'package:ecomm59/core/network/dio_network/diofactory.dart';
import 'package:ecomm59/featuers/login/data/repo/LoginRepositoryImpl.dart';
import 'package:ecomm59/featuers/login/logic/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/Di/di.dart';
import 'core/network/dio_network/DoiService.dart';
import 'featuers/register/logic/register_cubit.dart';
import 'myApp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setGetit();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => getit<LoginCubit>()),
      BlocProvider(create: (context)=>getit<RegisterCubit>())],
    child: const MyApp(),
  ));
}
