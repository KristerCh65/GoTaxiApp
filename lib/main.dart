import 'package:flutter/material.dart';
import 'package:gotaxiapp/RegistroVehiculo/RegistroVehiculoPage.dart';
import 'package:gotaxiapp/Retroalimentacion/RetroalimentacionPage.dart';
import 'package:gotaxiapp/UbicacionUsuario/ubicacion.dart';
import 'package:gotaxiapp/Usuarios/UsuarioPage.dart';
import 'Login/LoginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login Page",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      initialRoute: 'login',
      routes: <String, WidgetBuilder>{
        'login': (context) => LoginPage(),
        'user': (context) => UsuarioPage(),
        'ubicacion': (context) => Ubicacion(),
        'registroVehiculo': (context) => RegistroVehiculoPage(),
        'retroalimentacion': (context) => RetroalimentacionPage(),
      },
    );
  }
}
