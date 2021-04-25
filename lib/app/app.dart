import 'package:flutter/material.dart';
import 'package:spacex_discovery/shared/router.dart';
import 'package:spacex_discovery/ui/screens/home_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpaceX',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
