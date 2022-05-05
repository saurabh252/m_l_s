import 'package:auto_route/auto_route.dart';
import 'package:m_l_s/app/router.gr.dart';
import 'package:m_l_s/models/auth_mode_models.dart';
import 'package:m_l_s/repository/auth_repo_impl.dart';
import 'package:m_l_s/repository/auth_repository.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/locator.dart';
import '../../../data/remote/response/api_response.dart';

class SplashViewModel extends BaseViewModel{

  final String _splash_text = 'Splash View';
  String get splash_text => _splash_text;

  final _myRepo = AuthRepoImpl();
  AuthModeModels? authModeModels;

  ApiResponse<AuthModeModels> auth = ApiResponse.loading();

  void _getAuthMode(ApiResponse<AuthModeModels> response) {
    print("Auth Res :: $response");
    auth = response;
    authModeModels = auth.data;
    notifyListeners();
  }

  Future<void> fetchAuthData() async {
    _getAuthMode(ApiResponse.loading());
    _myRepo
        .getAuthData()
        .then((value) => _getAuthMode(ApiResponse.completed(value)))
        .onError((error, stackTrace) => _getAuthMode(ApiResponse.error(error.toString())));
  }

}