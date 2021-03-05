import 'package:flutter/material.dart';
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
          appBar: AppBar(
            title: Text("SpaceX"),
          ),
          body: model.isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemBuilder: (context, position) => Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                    child: LaunchCard(
                      launch: model.launches[position],
                    ),
                  ),
                  itemCount: model.launches.length,
                ),
        ),
      ),
    );
  }
}
