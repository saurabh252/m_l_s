import 'package:flutter/material.dart';
import 'package:m_l_s/ui/views/login/login_viewmodel.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(viewModelBuilder: ()=> LoginViewModel(),
        builder: (context, viewmodel,child)=>Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text("Edit Text"),
              Text("Button")
            ],
          ),
        ));
  }
}
