import 'package:flutter/material.dart';
import 'package:gotaxiapp/Usuarios/UsuarioPage.dart';
import 'Login/LoginPage.dart';
import 'UbicacionUsuario/UbicacionesPage.dart';

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
        Ubicacion.id: (context) => Ubicacion(),
      },
    );
  }
}
