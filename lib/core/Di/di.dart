import 'package:dio/dio.dart';

import 'package:get_it/get_it.dart';

import '../../featuers/login/data/repo/LoginRepositoryImpl.dart';
import '../../featuers/login/data/repo/LoginRepostiry.dart';
import '../../featuers/login/logic/login_cubit.dart';
import '../network/apiConsumer.dart';
import '../network/dio_network/DoiService.dart';
import '../network/dio_network/diofactory.dart';

final getit = GetIt.instance;

void setGetit() {
  /// dio
  getit.registerLazySingleton<Dio>(() => DioFcatory().dio);

  /// api consumer
  getit.registerLazySingleton<ApiConsumer>(() => DioService(dio: getit<Dio>()));

  /// repositry
  getit.registerLazySingleton<LoginRepository>(
      () => LoginRepositoryImpl(getit<ApiConsumer>()));

  ///cubit
  getit.registerFactory<LoginCubit>(() => LoginCubit(getit<LoginRepository>()));
}
