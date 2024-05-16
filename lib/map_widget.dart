import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:poc_map/list_strings.dart';

class MapStaticWidget extends StatelessWidget {
  const MapStaticWidget({
    super.key,
    required this.latitude,
    required this.longitude,
    required this.markerId,
    this.zoom = 16,
    this.cloudMapId,
  });
  final double latitude;
  final double longitude;
  final String markerId;
  final double zoom;
  final String? cloudMapId;

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      cloudMapId: cloudMapId,
      zoomControlsEnabled: false,
      initialCameraPosition: CameraPosition(
        target: LatLng(latitude, longitude),
        zoom: zoom,
      ),
      markers: {
        Marker(
          markerId: MarkerId(markerId),
          position: LatLng(latitude, longitude),
        ),
      },
      onMapCreated: (controller) async {
        await controller.setMapStyle(
          await rootBundle.loadString(ListString.pathJson),
        );
      },
    );
  }
}
