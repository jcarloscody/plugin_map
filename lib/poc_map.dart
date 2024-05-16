import 'package:flutter/material.dart';
import 'package:poc_map/map_widget.dart';

class PocMap {
  PocMap._();

  static MapStaticWidget mapStatic({
    required double latitude,
    required double longitude,
    required String markerId,
    double zoom = 16,
    Key? key,
    String? cloudMapId,
  }) {
    return MapStaticWidget(
      latitude: latitude,
      longitude: longitude,
      markerId: markerId,
      cloudMapId: cloudMapId,
      key: key,
      zoom: zoom,
    );
  }
}
