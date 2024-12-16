import 'package:dio/dio.dart';
import 'package:ecomm59/featuers/home/data/HomeRepostry/HomeRepo.dart';
import 'package:ecomm59/featuers/home/data/HomeRepostry/homeRepoImpl.dart';
import 'package:ecomm59/featuers/home/logic/home_cubit.dart';

import 'package:get_it/get_it.dart';

import '../../featuers/login/data/repo/LoginRepositoryImpl.dart';
import '../../featuers/login/data/repo/LoginRepostiry.dart';
import '../../featuers/login/logic/login_cubit.dart';
import '../../featuers/register/data/repo/RegisterRepository.dart';
import '../../featuers/register/data/repo/RegisterRepositoryImpl.dart';
import '../../featuers/register/logic/register_cubit.dart';
import '../network/apiConsumer.dart';
import '../network/dio_network/DoiService.dart';
import '../network/dio_network/diofactory.dart';

final getit = GetIt.instance;

void setGetit() {
  /// dio
  getit.registerLazySingleton<Dio>(() => DioFcatory().dio);

  /// api consumer
  getit.registerLazySingleton<ApiConsumer>(() => DioService(dio: getit<Dio>()));

  /// repositry login
  getit.registerLazySingleton<LoginRepository>(
      () => LoginRepositoryImpl(getit<ApiConsumer>()));

  ///cubit login
  getit.registerFactory<LoginCubit>(() => LoginCubit(getit<LoginRepository>()));

  /// for register
  getit.registerLazySingleton<RegisterRepository>(
      () => RegisterRepositoryImpl(getit<ApiConsumer>()));
  getit.registerFactory<RegisterCubit>(
      () => RegisterCubit(getit<RegisterRepository>()));


  /// for home
  getit.registerLazySingleton<HomeRepo>(
          () => HomeRepoImpl(getit<ApiConsumer>()));
  getit.registerLazySingleton<HomeCubit> (()=> HomeCubit(getit<HomeRepo>()));
}
