import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:spacex_discovery/core/constants/route_paths.dart';
import 'package:spacex_discovery/core/models/launch.dart';

class LaunchCard extends StatelessWidget {
  final Launch launch;

  const LaunchCard({Key key, this.launch}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Row(
        children: [
          launch.links.patch.small != null
              ? Image.network(
                  launch.links.patch.small,
                  scale: 6,
                )
              : Icon(
                  CupertinoIcons.rocket_fill,
                ),
          SizedBox(width: 5),
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
                  height: 5,
                ),
                Text(
                  "Launch: ${DateTime.fromMillisecondsSinceEpoch(this.launch.date_unix * 1000).toString()}",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.035),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          IconButton(
              icon: Icon(CupertinoIcons.heart),
              onPressed: () {
//TODO: favorite saving
              }),
        ],
      ),
    );
  }
}
