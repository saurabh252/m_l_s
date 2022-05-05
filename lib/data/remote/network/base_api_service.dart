abstract class BaseApiService {

  final String baseUrl = "https://api.middleton.in/mlsapi/api/account/";

  Future<dynamic> getResponse(String url);
  Future<dynamic> postResponse(String url,Map<String, String> jsonBody);

}