import 'package:flutter/material.dart';
import 'package:spacex_discovery/app/locator.dart';
import 'package:spacex_discovery/core/api/api.dart';
import 'package:spacex_discovery/core/models/company.dart';
import 'package:spacex_discovery/core/models/launch.dart';

class CompanyViewModel extends ChangeNotifier {
  Api _api = locator<Api>();

  Company company;
  // The view is loading by default, waiting for API call to succeed
  bool isLoadingCompany = true;

  CompanyViewModel() {
    getCompany();
  }

  void getCompany() async {
    try {
      var response = await _api.getCompany();
      company = Company.fromJson(response.data);
    } catch (error, stackTrace) {
      print(error);
      print(stackTrace);
    }
    isLoadingCompany = false;
    notifyListeners();
  }
}
