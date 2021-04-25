import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:provider/provider.dart';
import 'package:spacex_discovery/core/constants/route_paths.dart';
import 'package:spacex_discovery/core/viewmodel/launch_viewmodel.dart';
import 'package:spacex_discovery/ui/components/launch_card.dart';

class LaunchListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LaunchViewModel(),
      child: Consumer<LaunchViewModel>(
        builder: (context, LaunchViewModel model, child) => Scaffold(
          body: model.isLoadingNextLaunch || model.isLoadingUpcomingLaunches
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : SingleChildScrollView(
                  physics: ScrollPhysics(),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Next launch in: ",
                        style: TextStyle(fontSize: 30),
                      ),
                      CountdownTimer(
                        endTime: model.nextLaunch.date_unix * 1000,
                        endWidget:
                            Text("${model.nextLaunch.name} has launched!"),
                      ),
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, position) => Padding(
                          padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                          child: TextButton(
                            onPressed: () {
                              model.getLaunchById(
                                  model.upcomingLaunches[position].id);
                            },
                            child: LaunchCard(
                              launch: model.upcomingLaunches[position],
                            ),
                          ),
                        ),
                        itemCount: model.upcomingLaunches.length,
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
