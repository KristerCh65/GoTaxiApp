import 'dart:developer';

import 'package:gotaxiapp/UbicacionUsuario/.env.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'UbicacionUsuario.dart';

class UbicacionesRepositorio {
  static const String _baseUrl =
      'https://maps.googleapis.com/maps/api/directions/json?';

  final Dio _dio;

  UbicacionesRepositorio({Dio dio}) : _dio = dio ?? Dio();
  Future<Direcciones> obtenerDirecciones({
    @required LatLng origin,
    @required LatLng destination,
  }) async {
    final response = await _dio.get(
      _baseUrl,
      queryParameters: {
        'origin': '${origin.latitude}, ${origin.longitude}',
        'destination': '${destination.latitude}, ${destination.longitude}',
        'key': googleAPIKey,
      },
    );
    debugger();
    if (response.statusCode == 200) {
      return Direcciones.fromMap(response.data);
    }
    debugger();
    return null;
  }
}
