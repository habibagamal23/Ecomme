import 'package:ecomm59/core/chachHelper/chachhelpe.dart';
import 'package:ecomm59/featuers/adress/ui/screen/PaymentScreen.dart';
import 'package:ecomm59/featuers/home/data/models/productResponse.dart';
import 'package:ecomm59/featuers/register/ui/screens/RegisterScreen.dart';
import 'package:go_router/go_router.dart';

import '../../featuers/home/ui/screen/homeScreen.dart';
import '../../featuers/home/ui/screen/productDetailsScreen.dart';
import '../../featuers/home/ui/screen/productdetailes.dart';
import '../../featuers/login/ui/screens/loginScreen.dart';

class ConstantRouter {
  static const String homepath = "/home";
  static const String splash = "/";
  static const String loginscreen = "/login";
  static const String registerscreen = "/register";
  static const String productdetailse = "/productdetailse";
  static const String pyamentscreen = "/pyamentscreen";
}

class AppRouter {
  static final GoRouter router = GoRouter(
      initialLocation:
          islogin ? ConstantRouter.homepath : ConstantRouter.loginscreen,
      routes: [
        //     login
        GoRoute(
          path: ConstantRouter.loginscreen,
          builder: (context, state) {
            return const LoginScreen();
          },
        ),
        //rgister
        GoRoute(
          path: ConstantRouter.registerscreen,
          builder: (context, state) {
            return const RegisterScreen();
          },
        ),

        // home
        GoRoute(
          path: ConstantRouter.homepath,
          builder: (context, state) {
            return const Homescreen();
          },
        ),
        GoRoute(
          path: ConstantRouter.productdetailse,
          builder: (context, state) {
            final product = state.extra as Product;
            return  ProductDetailsScreen(product: product);
          },
        ),

        GoRoute(
          path: ConstantRouter.pyamentscreen,
          builder: (context, state) {
            return  Paymentscreen();
          },
        ),
      ]);
}



bool islogin = false;
checkLogin() async {
  int? id =  SharedPreferencesHelper.getId();
  if (id != null) {
    islogin = true;
  } else {
    islogin = false;
  }
}