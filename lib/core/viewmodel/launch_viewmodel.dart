import 'package:flutter/material.dart';
import 'package:spacex_discovery/app/locator.dart';
import 'package:spacex_discovery/core/api/api.dart';
import 'package:spacex_discovery/core/models/launch.dart';

class LaunchViewModel extends ChangeNotifier {
  Api _api = locator<Api>();

  List<Launch> launches = [];

  // The view is loading by default, waiting for API call to succeed
  bool isLoading = true;

  LaunchViewModel() {
    loadData();
  }

  void loadData() async {
    try {
      var response = await _api.getUpcomingLaunches();
      launches.addAll(List<Launch>.from(
          response.data.map((item) => Launch.fromJson(item))));
    } catch (error, stackTrace) {
      print(stackTrace);
    }
    isLoading = false;
    notifyListeners();
  }
}
