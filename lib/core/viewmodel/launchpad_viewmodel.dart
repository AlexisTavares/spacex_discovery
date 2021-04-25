import 'package:flutter/material.dart';
import 'package:spacex_discovery/app/locator.dart';
import 'package:spacex_discovery/core/api/api.dart';
import 'package:spacex_discovery/core/models/launchpad.dart';

class LaunchpadViewModel extends ChangeNotifier {
  Api _api = locator<Api>();

  List<Launchpad> launchpads = [];
  bool isLoadingLaunchpads = true;

  LaunchpadViewModel() {
    getLaunchpads();
  }

  void getLaunchpads() async {
    try {
      var response = await _api.getLandpads();
      launchpads.addAll(List<Launchpad>.from(
          response.data.map((item) => Launchpad.fromJson(item))));
    } catch (error, stackTrace) {
      print(stackTrace);
    }
    isLoadingLaunchpads = false;
    notifyListeners();
  }
}
