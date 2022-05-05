// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../ui/views/login/login_view.dart' as _i2;
import '../ui/views/splash/splash_view.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    SplashView.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashView());
    },
    LoginView.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginView());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(SplashView.name, path: '/'),
        _i3.RouteConfig(LoginView.name, path: '/login-view')
      ];
}

/// generated route for
/// [_i1.SplashView]
class SplashView extends _i3.PageRouteInfo<void> {
  const SplashView() : super(SplashView.name, path: '/');

  static const String name = 'SplashView';
}

/// generated route for
/// [_i2.LoginView]
class LoginView extends _i3.PageRouteInfo<void> {
  const LoginView() : super(LoginView.name, path: '/login-view');

  static const String name = 'LoginView';
}
