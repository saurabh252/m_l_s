import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:m_l_s/data/remote/response/api_response.dart';
import 'package:m_l_s/ui/views/login/login_viewmodel.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    bool _validate = false;
    TextEditingController emailController = TextEditingController();
    return ViewModelBuilder<LoginViewModel>.reactive(viewModelBuilder: ()=> LoginViewModel(),
        builder: (context, viewmodel,child)=>Scaffold(
          body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration:   InputDecoration(
                          border: const OutlineInputBorder(),
                          hintText: 'Enter your email',
                          errorText: _validate? 'Value Can\'t Be Empty':null,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20)),
                          onPressed: () {
                            if(emailController.text.isEmpty){
                              viewmodel.showError(context);
                            }else{
                              callApi(viewmodel, emailController.text.toString());
                            }
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Next'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
          ),
        )
    );
  }

  void callApi(LoginViewModel viewmodel, String string){
    viewmodel.fetchAuthData(string);
  }
}
