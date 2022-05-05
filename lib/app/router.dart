import 'package:auto_route/annotations.dart';
import 'package:m_l_s/ui/views/login/login_view.dart';

import '../ui/views/splash/splash_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashView, initial: true),
    AutoRoute(page: LoginView),
  ],
)
class $AppRouter {}