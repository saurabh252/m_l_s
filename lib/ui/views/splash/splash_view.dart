import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:m_l_s/app/router.gr.dart';
import 'package:m_l_s/models/auth_mode_models.dart';
import 'package:m_l_s/ui/views/splash/splash_viewmodel.dart';
import 'package:stacked/stacked.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      AutoRouter.of(context).push(const LoginView());
    });
  }
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(viewModelBuilder: () =>SplashViewModel(),
        builder:(context,viewmodel,child)=> Scaffold(
          body: Center(
            child: InkWell(
              onTap: (){
                // var navigateToLoginPage = viewmodel.navigateToLoginPage;
                // if(navigateToLoginPage){
                //   AutoRouter.of(context).push(const LoginView());
                // }
              },
              child: const Text(
                'Splash'
              ),
            ),
          ),
        ));
  }

}
