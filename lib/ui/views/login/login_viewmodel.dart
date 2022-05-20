import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../data/remote/response/api_response.dart';
import '../../../models/auth_mode_models.dart';
import '../../../repository/auth_repo_impl.dart';

class LoginViewModel extends BaseViewModel{
  final _myRepo = AuthRepoImpl();
  AuthModeModels? authModeModels;
  ApiResponse<AuthModeModels> auth = ApiResponse.loading();

  void _getAuthMode(ApiResponse<AuthModeModels> response) {
    debugPrint("Auth Res :: $response");
    auth = response;
    // authModeModels = auth.data;
    notifyListeners();
  }

  Future<void> fetchAuthData(String email) async {
    _getAuthMode(ApiResponse.loading());
    _myRepo
        .getAuthData(email)
        .then((value) => _getAuthMode(ApiResponse.completed(value)))
        .onError((error, stackTrace) => _getAuthMode(ApiResponse.error(error.toString())));

  }

  void showError(BuildContext context){
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Error")));
  }
}