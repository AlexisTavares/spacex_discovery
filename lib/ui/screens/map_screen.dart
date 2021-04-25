import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:spacex_discovery/core/viewmodel/launch_viewmodel.dart';
import 'package:spacex_discovery/core/viewmodel/launchpad_viewmodel.dart';
import 'package:spacex_discovery/core/models/launchpad.dart';

class MapScreen extends StatefulWidget {
  MapScreen({Key key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.090240, -95.712891),
    zoom: 1,
  );
  Set<Marker> launchpadsMarkerSet = Set();

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: _kGooglePlex,
      markers: launchpadsMarkerSet,
    );
  }
}
