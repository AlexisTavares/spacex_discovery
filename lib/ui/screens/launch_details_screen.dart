import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:spacex_discovery/core/models/launch.dart';

class LaunchDetailsScreen extends StatefulWidget {
  @override
  _LaunchDetailsScreenState createState() => _LaunchDetailsScreenState();
}

class _LaunchDetailsScreenState extends State<LaunchDetailsScreen> {
  Launch launch;

  void _init(BuildContext context) async {
    launch = ModalRoute.of(context).settings.arguments;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.launch.name),
        ),
        body: launch != null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  launch.links.patch.large != null
                      ? Image.network(launch.links.patch.large)
                      : Icon(CupertinoIcons.rocket_fill),
                  Text(
                    launch.details,
                  ),
                  Text(
                    "Launching: ${launch.date_local}",
                  ),
                ],
              ));
  }
}
