import 'package:m_l_s/models/auth_mode_models.dart';
import 'package:m_l_s/repository/auth_repository.dart';

import '../data/remote/network/api_end_points.dart';
import '../data/remote/network/base_api_service.dart';
import '../data/remote/network/network_api_service.dart';

class AuthRepoImpl implements AuthRepo{

  BaseApiService _apiService = NetworkApiService();


  @override
  Future<AuthModeModels?> getAuthData(String email) async {
    try {
      Map<String,String> jsonBody = {'email':email};
      dynamic response = await _apiService.postResponse(
          ApiEndPoints().getAuthData,jsonBody);
      final jsonData = AuthModeModels.fromJson(response);
      return jsonData;
    } catch (e) {
      throw e;
    }
  }
  }
