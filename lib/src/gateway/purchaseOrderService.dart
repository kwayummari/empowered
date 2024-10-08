import 'dart:convert';

import 'package:empowered/src/api/apis.dart';
import 'package:empowered/src/functions/splash.dart';
import 'package:empowered/src/provider/loadingProvider.dart';
import 'package:empowered/src/widgets/app_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class purchaseOrderServices {
  Api api = Api();

  Future getPurchaseOrder(BuildContext context, String supplierId) async {
    SplashFunction splashDetails = SplashFunction();
    final companyId = await splashDetails.getCompanyId();
    Map<String, dynamic> data = {
      'companyId': companyId,
      'supplierId': supplierId,
    };
    final response = await api.post(context, 'get_purchases', data);
    final decodedResponse = jsonDecode(response.body);
    return decodedResponse;
  }

  Future<void> editPurchaseOrder(
      BuildContext context, String name, String editId) async {
    final myProvider = Provider.of<LoadingProvider>(context, listen: false);
    myProvider.updateLoging(!myProvider.myLoging);
    Map<String, dynamic> data = {
      'name': name,
      'id': editId,
    };
    final response = await api.post(context, 'edit_branch', data);
    final newResponse = jsonDecode(response.body);

    if (response.statusCode == 200) {
      myProvider.updateLoging(!myProvider.myLoging);
      AppSnackbar(
        isError: false,
        response: newResponse['message'],
      ).show(context);
    } else {
      myProvider.updateLoging(!myProvider.myLoging);
      AppSnackbar(
        isError: true,
        response: newResponse['message'],
      ).show(context);
    }
  }

  Future<void> savePurchaseOrder(BuildContext context, String purchaseId,
      String supplierId, String status) async {
    Map<String, dynamic> data = {
      'purchaseId': purchaseId,
      'supplierId': supplierId,
      'status': status
    };
    final response = await api.post(context, 'save_purchase', data);
    final newResponse = jsonDecode(response.body);
    if (response.statusCode == 200) {
      AppSnackbar(
        isError: false,
        response: newResponse['message'],
      ).show(context);
    } else {
      AppSnackbar(
        isError: true,
        response: newResponse['message'],
      ).show(context);
    }
  }

  Future<void> deletePurchaseOrder(
      BuildContext context, String deleteId) async {
    final myProvider = Provider.of<LoadingProvider>(context, listen: false);
    myProvider.updateLoging(!myProvider.myLoging);
    Map<String, dynamic> data = {
      'id': deleteId,
    };
    final response = await api.post(context, 'delete_branch', data);
    final newResponse = jsonDecode(response.body);

    if (response.statusCode == 200) {
      myProvider.updateLoging(!myProvider.myLoging);
      AppSnackbar(
        isError: false,
        response: newResponse['message'],
      ).show(context);
    } else {
      myProvider.updateLoging(!myProvider.myLoging);
      AppSnackbar(
        isError: true,
        response: newResponse['message'],
      ).show(context);
    }
  }

  Future<void> addPurchaseOrder(BuildContext context, String inventoryId,
      String quantity, String purchaseId, String orderId) async {
    final myProvider = Provider.of<LoadingProvider>(context, listen: false);
    myProvider.updateLoging(!myProvider.myLoging);
    SplashFunction splashDetails = SplashFunction();
    final companyId = await splashDetails.getCompanyId();
    Map<String, dynamic> data = {
      'inventoryId': inventoryId,
      'quantity': quantity,
      'purchaseId': purchaseId,
      'orderId': orderId
    };

    final response = await api.post(context, 'add_product_list', data);
    final newResponse = jsonDecode(response.body);

    if (response.statusCode == 200) {
      myProvider.updateLoging(!myProvider.myLoging);
      AppSnackbar(
        isError: false,
        response: newResponse['message'],
      ).show(context);
    } else {
      myProvider.updateLoging(!myProvider.myLoging);
      AppSnackbar(
        isError: true,
        response: newResponse['message'],
      ).show(context);
    }
  }

  Future<void> addNewOrder(BuildContext context, String supplierId,
      String branchId, String orderId) async {
    final myProvider = Provider.of<LoadingProvider>(context, listen: false);
    myProvider.updateLoging(!myProvider.myLoging);
    SplashFunction splashDetails = SplashFunction();
    final companyId = await splashDetails.getCompanyId();
    Map<String, dynamic> data = {
      'supplierId': supplierId,
      'branchId': branchId,
      'companyId': companyId,
      'orderId': orderId
    };

    final response = await api.post(context, 'add_new_order', data);
    final newResponse = jsonDecode(response.body);

    if (response.statusCode == 200) {
      myProvider.updateLoging(!myProvider.myLoging);
      AppSnackbar(
        isError: false,
        response: newResponse['message'],
      ).show(context);
    } else {
      myProvider.updateLoging(!myProvider.myLoging);
      AppSnackbar(
        isError: true,
        response: newResponse['message'],
      ).show(context);
    }
  }

  Future<void> addNewPurchaseOrder(BuildContext context, String inventoryId,
      String quantity, String purchaseId, String orderId) async {
    final myProvider = Provider.of<LoadingProvider>(context, listen: false);
    myProvider.updateLoging(!myProvider.myLoging);
    SplashFunction splashDetails = SplashFunction();
    final companyId = await splashDetails.getCompanyId();
    Map<String, dynamic> data = {
      'inventoryId': inventoryId,
      'quantity': quantity,
      'purchaseId': purchaseId,
      'orderId': orderId
    };

    final response = await api.post(context, 'add_product_list', data);
    final newResponse = jsonDecode(response.body);

    if (response.statusCode == 200) {
      myProvider.updateLoging(!myProvider.myLoging);
      AppSnackbar(
        isError: false,
        response: newResponse['message'],
      ).show(context);
    } else {
      myProvider.updateLoging(!myProvider.myLoging);
      AppSnackbar(
        isError: true,
        response: newResponse['message'],
      ).show(context);
    }
  }
}
