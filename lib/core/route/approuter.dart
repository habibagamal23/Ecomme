import 'package:go_router/go_router.dart';

import '../../featuers/login/ui/screens/loginScreen.dart';

class ConstantRouter {
  static const String homepath = "/home";
  static const String splash = "/";
  static const String loginscreen = "/login";
}

class AppRouter {
  static final GoRouter router =
      GoRouter(initialLocation: ConstantRouter.loginscreen, routes: [
    //     login
    GoRoute(
      path: ConstantRouter.loginscreen,
      builder: (context, state) {
        return const LoginScreen();
      },
    ),
  ]);
}
