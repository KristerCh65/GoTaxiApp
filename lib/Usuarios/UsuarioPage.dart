import 'package:flutter/material.dart';
import 'package:gotaxiapp/UbicacionUsuario/ubicacion.dart';

class UsuarioPage extends StatefulWidget {
  static String id = "Usuario Page";

  @override
  _UsuarioPageState createState() => _UsuarioPageState();
}

class _UsuarioPageState extends State<UsuarioPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: new AppBar(
          title: Text(
            'Registro Usuario',
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
          ),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 15.0,
                ),
                nameUser(),
                SizedBox(
                  height: 15.0,
                ),
                surnameUser(),
                SizedBox(
                  height: 15.0,
                ),
                phoneUser(),
                SizedBox(
                  height: 15.0,
                ),
                emailUser(),
                SizedBox(
                  height: 15.0,
                ),
                passwordUser(),
                SizedBox(
                  height: 15.0,
                ),
                bottomRegister()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget nameUser() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          icon: Icon(
            Icons.account_circle,
            color: Colors.amber,
          ),
          hintText: 'Doe',
          labelText: 'Nombre',
          labelStyle: TextStyle(
            color: Colors.black,
          ),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
        ),
        onChanged: (value) {},
      ),
    );
  });
}

Widget surnameUser() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          icon: Icon(
            Icons.account_circle_outlined,
            color: Colors.amber,
          ),
          hintText: 'Doe',
          labelText: 'Apellido',
          labelStyle: TextStyle(
            color: Colors.black,
          ),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
        ),
        onChanged: (value) {},
      ),
    );
  });
}

Widget phoneUser() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          icon: Icon(
            Icons.phone_android_outlined,
            color: Colors.amber,
          ),
          hintText: '+504 0000-0000',
          labelText: 'Telefono',
          labelStyle: TextStyle(
            color: Colors.black,
          ),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
        ),
        onChanged: (value) {},
      ),
    );
  });
}

Widget emailUser() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(
            Icons.email_outlined,
            color: Colors.amber,
          ),
          hintText: 'ejemplo@correo.com',
          labelText: 'Correo Electronico',
          labelStyle: TextStyle(
            color: Colors.black,
          ),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
        ),
        onChanged: (value) {},
      ),
    );
  });
}

Widget passwordUser() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        decoration: InputDecoration(
          icon: Icon(
            Icons.lock,
            color: Colors.amber,
          ),
          hintText: '***********',
          labelText: 'Contraseña',
          labelStyle: TextStyle(
            color: Colors.black,
          ),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
        ),
        onChanged: (value) {},
      ),
    );
  });
}

Widget bottomRegister() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return ElevatedButton(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
          child: Text(
            'Registrarse',
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
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Ubicacion()));
        });
  });
}
