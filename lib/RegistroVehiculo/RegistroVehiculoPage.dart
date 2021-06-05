//import 'RegistroVehiculo.dart';

import 'package:flutter/material.dart';

class RegistroVehiculoPage extends StatefulWidget {
  static String id = "Registro Vehiculo ";
  //String marca = 'Marca';

  @override
  _RegistroVehiculoPageState createState() => _RegistroVehiculoPageState();
}

@override
class _RegistroVehiculoPageState extends State<RegistroVehiculoPage> {
  //@Override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: new AppBar(
          title: Text(
            'Registro Vehiculo',
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
          ),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 15,
              ),
              marcadecarroDB(),
              SizedBox(
                height: 15,
              ),
              modelodecarroDB(),
              SizedBox(
                height: 15,
              ),
              tipodecarroDB(),
              SizedBox(
                height: 15,
              ),
              colorTextField(),
              SizedBox(
                height: 15,
              ),
              chasisTextField(),
              SizedBox(
                height: 15,
              ),
              placaTextField(),
              SizedBox(
                height: 25,
              ),
              bottomRegisterCarro(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget marcadecarroDB() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 130.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.amber.shade600,
      ),
      child: DropdownButton<String>(
        hint: Text('Marca'),
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
        items: <String>['Ford', 'Nissan', 'BMW', 'Honda'].map((String value) {
          return new DropdownMenuItem<String>(
            value: value,
            child: new Text(
              value,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          );
        }).toList(),
        onChanged: (value) {},
      ),
    );
  });
}

Widget modelodecarroDB() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.amber.shade600,
      ),
      child: DropdownButton<String>(
        hint: Text('Modelo'),
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
        items: <String>['Coupe', 'Sedan', 'Compacto SUV', 'Hatchback']
            .map((String value) {
          return new DropdownMenuItem<String>(
            value: value,
            child: new Text(
              value,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          );
        }).toList(),
        onChanged: (value) {},
      ),
    );
  });
}

Widget tipodecarroDB() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 110.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.amber.shade600,
      ),
      child: DropdownButton<String>(
        hint: Text('Tipo'),
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
        items: <String>['Manual', 'Automatico'].map((String value) {
          return new DropdownMenuItem<String>(
            value: value,
            child: new Text(
              value,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          );
        }).toList(),
        onChanged: (value) {},
      ),
    );
  });
}

Widget colorTextField() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: TextField(
        autofocus: true,
        decoration: InputDecoration(
          hintText: 'ej: blanco, azul, rojo',
          labelText: 'Color',
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

Widget chasisTextField() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: TextField(
        autofocus: true,
        decoration: InputDecoration(
          hintText: 'ej: fabricado, hibrido, etc..',
          labelText: 'Chasis',
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

Widget placaTextField() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: TextField(
        autofocus: true,
        decoration: InputDecoration(
          hintText: 'ej: xxxxxxxx',
          labelText: 'Placa',
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

Widget bottomRegisterCarro() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return ElevatedButton(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
          child: Text(
            'Registrar Carro',
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
