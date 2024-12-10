import 'package:ecomm59/core/network/dio_network/diofactory.dart';
import 'package:ecomm59/featuers/login/data/repo/LoginRepositoryImpl.dart';
import 'package:ecomm59/featuers/login/logic/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/network/dio_network/DoiService.dart';
import 'myApp.dart';

void main() {
  runApp(BlocProvider(
    create: (context) =>
        LoginCubit(LoginRepositoryImpl(
            DioService(dio: DioFcatory().dio))),
    child: MyApp(),
  ));
}
