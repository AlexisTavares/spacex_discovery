import 'package:flutter/material.dart';
import 'package:spacex_discovery/app/locator.dart';
import 'package:spacex_discovery/core/api/api.dart';
import 'package:spacex_discovery/core/models/landpad.dart';

class LandpadViewModel extends ChangeNotifier {
  Api _api = locator<Api>();

  List<Landpad> landpads = [];
  bool isLoadingLandpads = true;

  LandpadViewModel() {
    getLandpads();
  }

  void getLandpads() async {
    try {
      var response = await _api.getLandpads();
      landpads.addAll(List<Landpad>.from(
          response.data.map((item) => Landpad.fromJson(item))));
    } catch (error, stackTrace) {
      print(stackTrace);
    }
    isLoadingLandpads = false;
    notifyListeners();
  }
}
