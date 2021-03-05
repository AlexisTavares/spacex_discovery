import 'package:flutter/material.dart';

import 'package:spacex_discovery/core/constants/route_paths.dart';
import 'package:spacex_discovery/core/models/launch.dart';

class LaunchCard extends StatelessWidget {
  final Launch launch;

  const LaunchCard({Key key, this.launch}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 5,
      child: FlatButton(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        child: Row(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    this.launch.name,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Text(
                    "Date: ${this.launch.launchDate}",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.035),
                  ),
                ],
              ),
            )
          ],
        ),
        onPressed: () {
          Navigator.of(context)
              .pushNamed(RoutePaths.LaunchDetails, arguments: launch);
        },
      ),
    );
  }
}
