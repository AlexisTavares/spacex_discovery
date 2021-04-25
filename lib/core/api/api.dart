import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class Api {
  Dio _dio;

  Api() {
    _dio = Dio();
    _dio.options = BaseOptions(baseUrl: "https://api.spacexdata.com/v4");
  }

  Future<Response<List<dynamic>>> getUpcomingLaunches() async =>
      await _dio.get<List<dynamic>>("/launches/upcoming");

  Future<Response<List<dynamic>>> getPastLaunches() async =>
      await _dio.get<List<dynamic>>("/launches/past");

  Future<Response<dynamic>> getLaunch(String launchId) async =>
      await _dio.get<dynamic>("/launches/$launchId");

  Future<Response<dynamic>> getNextLaunch() async =>
      await _dio.get<dynamic>("/launches/next");

  Future<Response<dynamic>> getCompany() async =>
      await _dio.get<dynamic>("/company");

  Future<Response<dynamic>> getLandpads() async =>
      await _dio.get<dynamic>("/landpads");

  Future<Response<dynamic>> getLaunchpads() async =>
      await _dio.get<dynamic>("/launchpads");
}
