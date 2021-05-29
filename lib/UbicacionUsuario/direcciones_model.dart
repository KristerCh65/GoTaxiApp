import 'package:flutter/cupertino.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Direcciones {
  final LatLngBounds bounds;
  final List<PointLatLng> polylinePoints;
  final String totalDistance;
  final String totalDuration;

  const Direcciones({
    @required this.bounds,
    @required this.polylinePoints,
    @required this.totalDistance,
    @required this.totalDuration,
  });

  factory Direcciones.fromMap(Map<String, dynamic> map){
    if ((map['routes'] as List).isEmpty) return null;

    final data = Map<String, dynamic>.from(map['routes'][0]);

    final northeast = data['bounds']['northeast'];
    final southwest = data['bounds']['southwest'];
    
    final bounds = LatLngBounds(
      northeast: LatLng(northeast['lat'], northeast['lng']),
      southwest: LatLng(southwest['lat'], southwest['lng']),
      );
    
    String distance = '';
    String duration = '';
    if ((data['legs'] as List).isNotEmpty){
      final leg = data['legs'][0];
      distance = leg ['distance']['text'];
      duration = leg ['duration']['text'];
    }

    return Direcciones(
      bounds: bounds,
      polylinePoints:
        PolylinePoints().decodePolyline(data['overview_polyline']['points']),
      totalDistance : distance,
      totalDuration : duration,
    );

  }
}