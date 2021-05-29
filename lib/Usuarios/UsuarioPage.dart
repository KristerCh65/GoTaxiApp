import 'package:flutter/material.dart';

class Usuarios extends StatelessWidget {
  DateTime _dateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text(
          'Registro Usuario',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: new Column(
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
          ],
        ),
      ),
    );
  }
}

Widget nameUser() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: TextField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          icon: Icon(Icons.account_circle),
          hintText: 'Doe',
          labelText: 'Nombre',
          hintStyle: TextStyle(color: Colors.grey),
        ),
        onChanged: (value) {},
      ),
    );
  });
}

Widget surnameUser() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: TextField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          icon: Icon(Icons.account_circle_outlined),
          hintText: 'Doe',
          labelText: 'Apellido',
          hintStyle: TextStyle(color: Colors.grey),
        ),
        onChanged: (value) {},
      ),
    );
  });
}

Widget phoneUser() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          icon: Icon(Icons.phone_android_outlined),
          hintText: '+504 0000-0000',
          labelText: 'Telefono',
          hintStyle: TextStyle(color: Colors.black12),
        ),
        onChanged: (value) {},
      ),
    );
  });
}

Widget emailUser() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(Icons.email_outlined),
          hintText: 'ejemplo@correo.com',
          labelText: 'Correo Electronico',
          hintStyle: TextStyle(color: Colors.black12),
        ),
        onChanged: (value) {},
      ),
    );
  });
}

Widget passwordUser() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: TextField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        decoration: InputDecoration(
          icon: Icon(Icons.lock),
          hintText: 'Contraseña',
          labelText: 'Contraseña',
        ),
        onChanged: (value) {},
      ),
    );
  });
}

Widget typeUser() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0), child: Column());
  });
}
