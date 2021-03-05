import 'package:flutter/material.dart';
import 'package:spacex_discovery/app/app.dart';
import 'package:spacex_discovery/app/locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(App());
}
