import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWidget extends StatefulWidget {
  final LatLng coords;
  const MapWidget({Key? key, required this.coords}) : super(key: key);

  @override
  State<MapWidget> createState() => _MapPageState();
}

class _MapPageState extends State<MapWidget> {
  final Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    CameraPosition kPosition = CameraPosition(
      target: widget.coords,
      zoom: 14,
    );

    return Container(
      height: 200,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(32)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32),
        child: GoogleMap(
          myLocationButtonEnabled: false,
          compassEnabled: false,
          mapType: MapType.normal,
          initialCameraPosition: kPosition,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
          markers: <Marker>{
            Marker(
              markerId: const MarkerId('coords'),
              position: widget.coords,
            )
          },
        ),
      ),
    );
  }
}
