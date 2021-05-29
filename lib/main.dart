import 'package:flutter/material.dart';
import 'package:gotaxiapp/UbicacionUsuario/ubicacion.dart';
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
      routes: {
        LoginPage.id: (context) => LoginPage(),
        Ubicacion.id: (context) => Ubicacion(),
      },
    );
  }
}
