import 'dart:convert';

import 'package:empowered/src/api/apis.dart';
import 'package:empowered/src/functions/splash.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/material.dart';

class dropdownService {
  static String baseUrl = dotenv.env['API_SERVER'] ?? 'http://noapi';
  Api api = Api();

  Future dropdown(BuildContext context, String endPoint) async {
    final response = await api.get(context, endPoint);
    return response;
  }

  Future dropdownPost(BuildContext context, String endPoint) async {
    SplashFunction splashDetails = SplashFunction();
    final companyId = await splashDetails.getCompanyId();
    Map<String, dynamic> data = {
      'companyId': companyId,
    };
    final response = await api.post(context, endPoint, data);
    final decodedResponse = jsonDecode(response.body);
    return decodedResponse;
  }
}
