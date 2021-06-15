import 'package:flutter/material.dart';
import 'package:gotaxiapp/Conductor/ConductorPage.dart';
import 'package:gotaxiapp/RegistroVehiculo/RegistroVehiculoPage.dart';
import 'package:gotaxiapp/Retroalimentacion/RetroalimentacionPage.dart';
import 'package:gotaxiapp/TomaViaje/TomarViajePage.dart';
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
      initialRoute: LoginPage.id,
      routes: <String, WidgetBuilder>{
        LoginPage.id: (context) => LoginPage(),
        UsuarioPage.id: (context) => UsuarioPage(),
        ConductorPage.id: (context) => ConductorPage(),
        TomarViajePage.id: (context) => TomarViajePage(),
        Ubicacion.id: (context) => Ubicacion(),
        RegistroVehiculoPage.id: (context) => RegistroVehiculoPage(),
        RetroalimentacionPage.id: (context) => RetroalimentacionPage(),
      },
    );
  }
}
