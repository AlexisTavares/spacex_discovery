import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spacex_discovery/core/constants/route_paths.dart';
import 'package:spacex_discovery/ui/screens/launch_history_screen.dart';
import 'package:spacex_discovery/ui/screens/launch_list_screen.dart';
import 'package:spacex_discovery/ui/screens/map_screen.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    LaunchHistoryScreen(),
    LaunchListScreen(),
    MapScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SpaceXDiscovery'),
        ),
        body: _children[_currentIndex], // new
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped, // new
          currentIndex: _currentIndex, // new
          items: [
            new BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.book),
              label: 'History',
            ),
            new BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.rocket),
              label: 'Upcoming',
            ),
            new BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.map), label: 'Map')
          ],
        ),
        drawer: DrawerMenu());
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: const Text(
                'Menu',
                style: TextStyle(
                    color: Colors.white,
                    //fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
            ListTile(
              title: const Text('SpaceX'),
              leading: Icon(CupertinoIcons.info),
              onTap: () {
                Navigator.of(context).popAndPushNamed(RoutePaths.Informations);
              },
            ),
            ListTile(
              title: const Text('Favorites'),
              leading: Icon(CupertinoIcons.heart),
              onTap: () {
                Navigator.of(context).popAndPushNamed(RoutePaths.Favorites);
              },
            ),
            ListTile(
              title: const Text('Settings'),
              leading: Icon(CupertinoIcons.gear),
              onTap: () {
                Navigator.of(context)
                    .popAndPushNamed(RoutePaths.NotificationSettings);
              },
            ),
          ],
        ),
      ),
    );
  }
}
