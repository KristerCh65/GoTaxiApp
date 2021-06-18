import 'package:flutter/material.dart';
import 'package:gotaxiapp/UbicacionUsuario/ubicacion.dart';
import 'package:gotaxiapp/TomaViaje/TomarViajePage.dart';

class ConductorPage extends StatefulWidget {
  static String id = "Conductor";

  @override
  _ConductorPageState createState() => _ConductorPageState();
}

@override
class _ConductorPageState extends State<ConductorPage> {
  TimeOfDay time;
  TimeOfDay picked;

  @override
  void initState() {
    super.initState();
    time = TimeOfDay.now();
  }

  Future<Null> selectTime(BuildContext context) async {
    picked = await showTimePicker(context: context, initialTime: time);
    if (picked = null) {
      setState(() {
        time = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Scaffold(
        appBar: new AppBar(
          title: Text(
            'Conductor',
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
          ),
          backgroundColor: Colors.amber,
        ),
        body: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            IconButton(
                icon: Icon(Icons.alarm),
                iconSize: 30,
                onPressed: () {
                  selectTime(context);
                  print(time);
                }),
            Text('Hora de Partida ${time.hour}:${time.minute} ',
                style: TextStyle(fontSize: 20)),
            SizedBox(
              height: 15.0,
            ),
            numberperson(),
            SizedBox(
              height: 15.0,
            ),
            bottomstartinglocation(),
            lineaBot(),
            SizedBox(height: 15.0),
            IconButton(
                icon: Icon(Icons.alarm),
                iconSize: 30,
                onPressed: () {
                  selectTime(context);
                  print(time);
                }),
            Text('Hora de Partida ${time.hour}:${time.minute} ',
                style: TextStyle(fontSize: 20)),
            numberpersona(),
            SizedBox(
              height: 25.0,
            ),
            bottomstartinglocations(),
            lineaBoton(),
            SizedBox(height: 15.0),
            IconButton(
                icon: Icon(Icons.alarm),
                iconSize: 30,
                onPressed: () {
                  selectTime(context);
                  print(time);
                }),
            Text('Hora de Partida ${time.hour}:${time.minute} ',
                style: TextStyle(fontSize: 20)),
            numberpers(),
            SizedBox(
              height: 25.0,
            ),
            bottomstartinglocationd(),
            lineaBotton(),
            SizedBox(height: 15.0),
          ]),
        ),
      ),
    );
  }
}

Widget numberperson() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    TextEditingController _textocontroller = TextEditingController(text: "");
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: TextField(
        controller: _textocontroller,
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

Widget bottomstartinglocation() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return ElevatedButton(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 15.0),
          child: Text(
            'Tomar Viaje',
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
              .push(MaterialPageRoute(builder: (context) => TomarViajePage()));
        });
  });
}

Widget lineaBot() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: TextField(
        enabled: false,
      ),
    );
  });
}

Widget numberpersona() {
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

Widget bottomstartinglocations() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return ElevatedButton(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 15.0),
          child: Text(
            'Tomar Viaje',
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
              .push(MaterialPageRoute(builder: (context) => TomarViajePage()));
        });
  });
}

Widget lineaBoton() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: TextField(
        enabled: false,
      ),
    );
  });
}

Widget numberpers() {
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

Widget bottomstartinglocationd() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return ElevatedButton(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 15.0),
          child: Text(
            'Tomar Viaje',
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
              .push(MaterialPageRoute(builder: (context) => TomarViajePage()));
        });
  });
}

Widget lineaBotton() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: TextField(
        enabled: false,
      ),
    );
  });
}
