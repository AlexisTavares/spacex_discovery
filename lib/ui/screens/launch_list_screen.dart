import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:provider/provider.dart';
import 'package:spacex_discovery/core/viewmodel/launch_viewmodel.dart';
import 'package:spacex_discovery/ui/components/launch_card.dart';

class LaunchListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LaunchViewModel(),
      child: Consumer<LaunchViewModel>(
        builder: (context, LaunchViewModel model, child) => Scaffold(
            body: Container(
          child: Column(children: [
            if (model.isLoadingNextLaunch)
              Center(
                child: CircularProgressIndicator(),
              )
            else
              Column(
                children: [
                  Text("Next launch in: "),
                  CountdownTimer(
                    endTime: model.nextLaunch.date_unix,
                  ),
                ],
              ),
            if (model.isLoadingUpcomingLaunches)
              Center(
                child: CircularProgressIndicator(),
              )
            else
              ListView.builder(
                itemBuilder: (context, position) => Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                  child: LaunchCard(
                    launch: model.upcomingLaunches[position],
                  ),
                ),
                itemCount: model.upcomingLaunches.length,
              ),
          ]),
        )),
      ),
    );
  }
}
