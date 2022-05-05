import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:m_l_s/app/router.gr.dart';
import 'package:m_l_s/models/auth_mode_models.dart';
import 'package:m_l_s/ui/views/splash/splash_viewmodel.dart';
import 'package:stacked/stacked.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(viewModelBuilder: () =>SplashViewModel(),
        builder:(context,viewmodel,child)=> Scaffold(
          body: Center(
            child: InkWell(
              onTap: (){
                // AutoRouter.of(context).push(const LoginView());
                viewmodel.fetchAuthData();
              },
              child: Text(
                viewmodel.authModeModels?.data?.userEmail??'Splash'
              ),
            ),
          ),
        ));
  }
}
