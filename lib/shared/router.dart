import 'package:flutter/material.dart';

import 'package:spacex_discovery/core/constants/route_paths.dart';

import 'package:spacex_discovery/ui/screens/favorites_screen.dart';
import 'package:spacex_discovery/ui/screens/company_informations_screen.dart';
import 'package:spacex_discovery/ui/screens/launch_details_screen.dart';
import 'package:spacex_discovery/ui/screens/launch_history_screen.dart';
import 'package:spacex_discovery/ui/screens/launch_list_screen.dart';
import 'package:spacex_discovery/ui/screens/map_screen.dart';
import 'package:spacex_discovery/ui/screens/settings_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.Launches:
        return MaterialPageRoute(
            builder: (_) => LaunchListScreen(), settings: settings);
        break;

      case RoutePaths.LaunchDetails:
        return MaterialPageRoute(
            builder: (_) => LaunchDetailsScreen(), settings: settings);
        break;

      case RoutePaths.LaunchSitesMap:
        return MaterialPageRoute(
            builder: (_) => MapScreen(), settings: settings);
        break;

      case RoutePaths.LaunchHistory:
        return MaterialPageRoute(
            builder: (_) => LaunchHistoryScreen(), settings: settings);
        break;

      case RoutePaths.Favorites:
        return MaterialPageRoute(
            builder: (_) => FavoritesScreen(), settings: settings);
        break;

      case RoutePaths.Informations:
        return MaterialPageRoute(
            builder: (_) => CompanyInformationsScreen(), settings: settings);
        break;

      case RoutePaths.NotificationSettings:
        return MaterialPageRoute(
            builder: (_) => SettingsScreen(), settings: settings);
        break;

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('Pas de route définie pour ${settings.name}'),
            ),
          ),
        );
    }
  }
}
