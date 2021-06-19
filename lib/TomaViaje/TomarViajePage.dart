import 'package:flutter/material.dart';
import 'package:gotaxiapp/UbicacionUsuario/ubicacion.dart';

class TomarViajePage extends StatefulWidget {
  TomarViajePage({Key key}) : super(key: key);

  @override
  _TomarViajePageState createState() => _TomarViajePageState();
}

class _TomarViajePageState extends State<TomarViajePage> {
  String texto;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: new AppBar(
          title: Text(
            'Tomar Viaje',
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
          ),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 15.0,
              ),
              numberUser(),
              SizedBox(
                height: 15.0,
              ),
              horasalida(),
              SizedBox(
                height: 15.0,
              ),
              bottomstartingtomarViaje(),
            ]),
          ),
        ),
      ),
    );
  }
}

Widget numberUser() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          icon: Icon(Icons.account_circle_outlined),
          hintText: '100',
          labelText: 'Numero de Pasajero',
          hintStyle: TextStyle(color: Colors.black12),
        ),
        onChanged: (value) {},
      ),
    );
  });
}

Widget horasalida() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          icon: Icon(Icons.timer),
          hintText: 'AM. PM.',
          labelText: 'Hora de salida',
          hintStyle: TextStyle(color: Colors.black12),
        ),
        onChanged: (value) {},
      ),
    );
  });
}

Widget bottomstartingtomarViaje() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return ElevatedButton(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 15.0),
          child: Text(
            'Ubicacion de Partida',
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
