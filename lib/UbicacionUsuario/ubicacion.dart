import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:gotaxiapp/UbicacionUsuario/direcciones_model.dart';
import 'package:gotaxiapp/UbicacionUsuario/ubicaciones_repositorio.dart';

class Ubicacion extends StatefulWidget {
  static String id = "Ubicacion";
  @override
  _UbicacionState createState() => _UbicacionState();
}

class _UbicacionState extends State<Ubicacion> {
  static const _initialCameraPosition = CameraPosition(
      target: LatLng(15.493633061463562, -88.03434396494823), zoom: 18);

  GoogleMapController _googleMapController;
  Marker _origin;
  Marker _destination;
  Direcciones _info;

  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ubicacion"),
        backgroundColor: Colors.amber,
      ),
      body: 
      // Center(
      //   child: Column(
      //     children: [
      //       SizedBox(height: 15.0),
      //       Text(
      //         "Selecciona tu ubicacion de partida",
      //         style: TextStyle(
      //           fontSize: 16.0,
      //           fontWeight: FontWeight.bold,
      //           color: Colors.black87,
      //         ),
      //       ),
      Stack(alignment: Alignment.center, 
              children: [
                GoogleMap(
                  myLocationButtonEnabled: false,
                  zoomControlsEnabled: false,
                  initialCameraPosition: _initialCameraPosition,
                  onMapCreated: (controller) =>
                      _googleMapController = controller,
                  markers: {
                    if (_origin != null) _origin,
                    if (_destination != null) _destination
                  },
                  polylines: {
                    if (_info != null)
                      Polyline(
                        polylineId: const PolylineId ('overview_polyline'),
                        color: Colors.red,
                        width: 5,
                        points: _info.polylinePoints
                        .map((e)=> LatLng(e.latitude, e.longitude))
                        .toList(),
                      ),
                  },
                  onLongPress: _addMarker,
                ),
                if (_info != null)
                  Positioned(
                  top: 20.0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 6.0,
                      horizontal: 12.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.yellowAccent,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset (0, 2),
                          blurRadius: 6.0,
                        )
                      ]
                    )
                  ),
                )
              ]),
      //     ],
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
        onPressed: () => _googleMapController.animateCamera(
          _info != null
              ? CameraUpdate.newLatLngBounds(_info.bounds, 100.0)
              : CameraUpdate.newCameraPosition(_initialCameraPosition),
        ),
        child: const Icon(Icons.center_focus_strong),
      ),
    );
  }

  void _addMarker(LatLng pos) async {
    if (_origin == null || (_origin != null && _destination != null)) {
      setState(() {
        _origin = Marker(
          markerId: const MarkerId('Origin'),
          infoWindow: const InfoWindow(title: 'Origin'),
          icon:
              BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueYellow),
          position: pos,
        );
        _destination = null;
        _info = null;
      });
    } else {
      setState(() {
        _destination = Marker(
          markerId: const MarkerId('destination'),
          infoWindow: const InfoWindow(title: 'Destination'),
          icon:
              BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
          position: pos,
        );
      });

      final direcciones = await UbicacionesRepositorio()
          .obtenerDirecciones(origin: _origin.position, destination: pos);
      setState(() => _info = direcciones);
    }
  }
}
