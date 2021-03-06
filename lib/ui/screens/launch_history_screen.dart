import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spacex_discovery/core/viewmodel/launch_viewmodel.dart';
import 'package:spacex_discovery/ui/components/launch_card.dart';

class LaunchHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LaunchViewModel(),
      child: Consumer<LaunchViewModel>(
        builder: (context, LaunchViewModel model, child) => Scaffold(
          body: model.isLoadingPastLaunches
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemBuilder: (context, position) => Padding(
                    padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                    child: TextButton(
                      child: LaunchCard(
                        launch: model.pastLaunches[position],
                      ),
                      onPressed: () {
                        model
                            .getLaunchById(model.upcomingLaunches[position].id);
                      },
                    ),
                  ),
                  itemCount: model.pastLaunches.length,
                ),
        ),
      ),
    );
  }
}
