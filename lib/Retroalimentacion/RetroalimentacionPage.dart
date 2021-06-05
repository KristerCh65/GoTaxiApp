import 'package:flutter/material.dart';

class RetroalimentacionPage extends StatefulWidget {
  static String id = "Retroalimentacion";

  @override
  _RetroAlimentacionPageState createState() => _RetroAlimentacionPageState();
}

@override
class _RetroAlimentacionPageState extends State<RetroalimentacionPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: new AppBar(
        title: Text(
          'Retroalimentacion',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
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
            imagePerfil(),
            SizedBox(
              height: 15,
            ),
            userTXT(),
            SizedBox(
              height: 35,
            ),
            commentTextArea(),
            SizedBox(
              height: 15,
            ),
            bottomRetroalimentacion(),
          ],
        ),
      ),
    ));
  }
}

Widget imagePerfil() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
        child: CircleAvatar(
      radius: 80.0,
      backgroundImage: NetworkImage(
        'https://www.kindpng.com/picc/m/22-223941_transparent-avatar-png-male-avatar-icon-transparent-png.png',
      ),
    ));
  });
}

Widget userTXT() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      child: Text(
        'Erick Gonzales',
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontSize: 24.0,
          color: Colors.black87,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  });
}

Widget commentTextArea() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: TextField(
        autofocus: true,
        keyboardType: TextInputType.multiline,
        textInputAction: TextInputAction.newline,
        minLines: 5,
        maxLines: 10,
        decoration: new InputDecoration(
          labelText: 'Comentarios',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber, width: 3.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber, width: 3.0),
          ),
          labelStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        onChanged: (value) {},
      ),
    );
  });
}

Widget ratingStar() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
    );
  });
}

Widget bottomRetroalimentacion() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return ElevatedButton(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
          child: Text(
            'Enviar',
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
