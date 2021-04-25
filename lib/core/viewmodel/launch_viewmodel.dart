import 'package:flutter/material.dart';
import 'package:spacex_discovery/app/locator.dart';
import 'package:spacex_discovery/core/api/api.dart';
import 'package:spacex_discovery/core/models/launch.dart';

class LaunchViewModel extends ChangeNotifier {
  Api _api = locator<Api>();

  List<Launch> upcomingLaunches = [];
  List<Launch> pastLaunches = [];
  Launch launch;
  Launch nextLaunch;

  bool isLoadingUpcomingLaunches = true;
  bool isLoadingPastLaunches = true;
  bool isLoadingLaunch = true;
  bool isLoadingNextLaunch = true;

  LaunchViewModel() {
    getUpcomingLaunches();
    getPastLaunches();
    getNextLaunch();
  }

  void getUpcomingLaunches() async {
    try {
      var response = await _api.getUpcomingLaunches();
      upcomingLaunches.addAll(List<Launch>.from(
          response.data.map((item) => Launch.fromJson(item))));
    } catch (error, stackTrace) {
      print(stackTrace);
    }
    isLoadingUpcomingLaunches = false;
    notifyListeners();
  }

  void getPastLaunches() async {
    try {
      var response = await _api.getPastLaunches();
      pastLaunches.addAll(List<Launch>.from(
          response.data.map((item) => Launch.fromJson(item))));
    } catch (error, stackTrace) {
      print(error);
      print(stackTrace);
    }
    isLoadingPastLaunches = false;
    notifyListeners();
  }

  void getLaunchById(String id) async {
    try {
      var response = await _api.getLaunch(id);
      launch = Launch.fromJson(response.data);
    } catch (error, stackTrace) {
      print(error);
      print(stackTrace);
    }
    notifyListeners();
  }

  void getNextLaunch() async {
    try {
      var response = await _api.getNextLaunch();
      nextLaunch = Launch.fromJson(response.data);
    } catch (error, stackTrace) {
      print(error);
      print(stackTrace);
    }
    isLoadingNextLaunch = false;
    notifyListeners();
  }

/*
  void setLaunchFavorite(String launchId, bool isFavorite) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    bool isFav = await isLaunchFavorite(launchId) ?? false;
    await sharedPreferences.setBool("launch_$launchId", !isFav);
  }

  Future<bool> isLaunchFavorite(String launchId) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool("launch_$launchId");
  }*/
}
