import 'dart:convert';

import 'package:empowered/src/api/apis.dart';
import 'package:empowered/src/widgets/app_snackbar.dart';
import 'package:flutter/material.dart';

class deleteServices {
  Api api = Api();

  Future delete(BuildContext context, url, userId) async {
    Map<String, dynamic> data = {
      'id': userId,
    };
    final response = await api.post(context, url, data);
    final decodedResponse = jsonDecode(response.body);
    if (response.statusCode == 200) {
      AppSnackbar(
        isError: false,
        response: decodedResponse['message'],
      ).show(context);
    } else {
      AppSnackbar(
        isError: true,
        response: decodedResponse['message'],
      ).show(context);
    }
    return decodedResponse;
  }
}
