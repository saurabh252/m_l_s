import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import '../app_exception.dart';
import 'base_api_service.dart';

class NetworkApiService extends BaseApiService {

  @override
  Future getResponse(String url) async {
    dynamic responseJson;
    try {
      Map<String,String> header = {'app-id':'JwRS-XDGr76KFPbK','api-key':'ekzB2tD\$@t=d9?Ubd4!Ne*JRzv^F_&3R'};
      final response = await http.post(Uri.parse(baseUrl + url),headers: header,body: 'test@email.com');
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 404:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occured while communication with server' +
                ' with status code : ${response.statusCode}');
    }
  }

  @override
  Future postResponse(String url, Map<String, String> jsonBody) async {
    dynamic responseJson;
    try {
      Map<String,String> header = {'app-id':'JwRS-XDGr76KFPbK','api-key':'ekzB2tD\$@t=d9?Ubd4!Ne*JRzv^F_&3R'};
      debugPrint('Url : ${baseUrl + url}');
      debugPrint('Header: $header');
      debugPrint('Request Body : $jsonBody');
      final response = await http.post(Uri.parse(baseUrl + url),headers: header,body: jsonBody);
      debugPrint('Response Code: ${response.statusCode}');
      debugPrint('Response Body: ${response.body}');
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }
}