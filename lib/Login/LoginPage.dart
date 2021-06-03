import 'package:flutter/material.dart';
import 'package:gotaxiapp/Usuarios/UsuarioPage.dart';

class LoginPage extends StatefulWidget {
  static String id = "Login Page";

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Image.asset(
                  'assets/GoIcono.png',
                  height: 250.0,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              userTextField(),
              SizedBox(
                height: 15,
              ),
              passwordTextField(),
              SizedBox(
                height: 20.0,
              ),
              bottomLogin(),
              SizedBox(
                height: 20.0,
              ),
              bottomRegister()
            ],
          ),
        ),
      ),
    );
  }
}

Widget userTextField() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        autofocus: true,
        decoration: InputDecoration(
          icon: Icon(
            Icons.email,
            color: Colors.amber,
          ),
          hintText: 'ejemplo@correo.com',
          labelText: 'Correo Electronico',
          labelStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
        ),
        onChanged: (value) {},
      ),
    );
  });
}

Widget passwordTextField() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: TextField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        decoration: InputDecoration(
          icon: Icon(
            Icons.lock,
            color: Colors.amber,
          ),
          hintText: 'Contraseña',
          labelText: 'Contraseña',
          labelStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
        ),
        onChanged: (value) {},
      ),
    );
  });
}

Widget bottomLogin() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return ElevatedButton(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
          child: Text(
            'Iniciar Sesion',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.amber),
        ),
        onPressed: () {});
  });
}

Widget bottomRegister() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return ElevatedButton(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 87.0, vertical: 15.0),
          child: Text(
            'Registrarse',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.amber,
            ),
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.black),
        ),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => UsuarioPage(),
          ));
        });
  });
}
