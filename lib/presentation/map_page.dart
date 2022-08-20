import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../data/data.dart';
import '../data/helpers.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    User user = userData;

    return FutureBuilder(
        future: getCoords(user.school.name),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const CircularProgressIndicator();

          LatLng coords = snapshot.data as LatLng;

          CameraPosition kSchool = CameraPosition(
            target: coords,
            zoom: 13,
          );

          return FutureBuilder(
              future: getPlaces('driving', coords),
              builder: (context, snapshot) {
                if (!snapshot.hasData) return const CircularProgressIndicator();

                Set<Marker> places = snapshot.data as Set<Marker>;

                places.add(Marker(
                    markerId: const MarkerId('school'), position: coords));

                return GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: kSchool,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                  markers: places,
                );
              });
        });
  }
}
