import 'package:flutter/material.dart';
import 'package:m_l_s/app/router.dart';
import 'package:m_l_s/app/router.gr.dart';
import 'package:m_l_s/ui/views/splash/splash_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/locator.dart';

void main() {
  setupLocator();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  final _appRouter =  AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(),
    );
  }
}

