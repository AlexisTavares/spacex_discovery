import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spacex_discovery/core/models/launch.dart';
import 'package:spacex_discovery/core/viewmodel/launch_viewmodel.dart';

class LaunchDetailsScreen extends StatefulWidget {
  @override
  _LaunchDetailsScreenState createState() => _LaunchDetailsScreenState();
}

class _LaunchDetailsScreenState extends State<LaunchDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => LaunchViewModel(),
        child: Consumer<LaunchViewModel>(
            builder: (context, LaunchViewModel model, child) => Scaffold(
                appBar: AppBar(
                  title: Text(model.launch.name),
                ),
                body: model.launch != null
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : Column(
                        children: [
                          model.launch.links.patch.large != null
                              ? Image.network(model.launch.links.patch.large)
                              : Icon(CupertinoIcons.rocket_fill),
                          Text(
                            model.launch.details,
                          ),
                          Text(
                            "Launching: ${model.launch.date_local}",
                          ),
                        ],
                      ))));
  }
}
