import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gotaxiapp/Usuarios/bloc/UsuarioBloc.dart';
import 'package:gotaxiapp/Usuarios/models/Roles.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:gotaxiapp/Conductor/ConductorPage.dart';

class UsuarioPage extends StatefulWidget {
  UsuarioPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _UsuarioPageState();
}

class _UsuarioPageState extends State<UsuarioPage> {
  _UsuarioPageState();

  List<Roles> roles;

  DateTime date = DateTime.now();

  final userTypes = ["Conductor", "Pasajero"];
  String nameValue;
  String contraValue;
  String telefonoValue;
  String correoValue;
  DateTime fechaValue;
  int rolValue;
  int idValue;

  GlobalKey formKey = GlobalKey<FormState>();
  UsuarioBloc bloc;

  var nameUserController = TextEditingController();
  var dateController = DateTimeValueAccessor();
  // var phoneUserController = TextEditingController();
  // var correoUserController = TextEditingController();
  // var contraUserController = TextEditingController();
  // var typeUserController = DropDownFormField();
  var textStyle = TextStyle();

  @override
  Widget build(BuildContext context) {
    // nameUserController.text = user.nombre;
    // phoneUserController.text = user.telefono;
    // correoUserController.text = user.correo;
    // contraUserController.text = user.contrasenia;

    return SafeArea(
      child: Scaffold(appBar: buildAppBar(), body: buildForm()),
    );
  }

  Widget buildAppBar() {
    return AppBar(
      title: Text(
        'Registro Usuario',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
      ),
      backgroundColor: Colors.amber,
    );
  }

  Widget buildForm() {
    return Center(
        child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
            child: Form(
              key: formKey,
              child: Container(
                child: Column(
                  children: [
                    nameUser(),
                    SizedBox(
                      height: 10.0,
                    ),
                    phoneUser(),
                    SizedBox(
                      height: 10.0,
                    ),
                    dateUser(),
                    SizedBox(
                      height: 10.0,
                    ),
                    emailUser(),
                    SizedBox(
                      height: 10.0,
                    ),
                    passwordUser(),
                    SizedBox(
                      height: 10.0,
                    ),
                    typeUser(),
                    SizedBox(
                      height: 10.0,
                    ),
                    buttonRegister()
                  ],
                ),
              ),
            )));
  }

  Widget nameUser() {
    return Container(
      child: TextFormField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          icon: Icon(
            Icons.account_circle,
            color: Colors.amber,
          ),
          hintText: 'John Doe',
          labelText: 'Nombre',
          labelStyle: TextStyle(
            color: Colors.black,
          ),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
        ),
        onSaved: (name) {
          nameValue = name;
        },
      ),
    );
  }

  Widget dateUser() {
    return Container(
      child: TextFormField(
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
          icon: Icon(
            Icons.calendar_today_outlined,
            color: Colors.amber,
          ),
          hintText: '12/12/1999',
          labelText: 'Fecha de Nacimiento',
          labelStyle: TextStyle(
            color: Colors.black,
          ),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
        ),
      ),
    );
  }

  Widget phoneUser() {
    return Container(
      child: TextFormField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          icon: Icon(
            Icons.phone_android,
            color: Colors.amber,
          ),
          hintText: '+504 9999-9998',
          labelText: 'Telefono',
          labelStyle: TextStyle(
            color: Colors.black,
          ),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
        ),
      ),
    );
  }

  Widget emailUser() {
    return Container(
      child: TextFormField(
        //formControlName: "correo",
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(
            Icons.email,
            color: Colors.amber,
          ),
          hintText: 'example@email.com',
          labelText: 'Correo electronico',
          labelStyle: TextStyle(
            color: Colors.black,
          ),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
        ),
      ),
    );
  }

  Widget typeUser() {
    return Container(
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          icon: Icon(
            Icons.account_box,
            color: Colors.amber,
          ),
          hintText: 'Elegir tipo de usuario',
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
        ),
        onSaved: (rol) {
          rolValue = rol;
        },
        items: [
          DropdownMenuItem(
            value: 1,
            child: Text('Pasajero'),
          ),
          DropdownMenuItem(
            value: 2,
            child: Text('Conductor'),
          )
        ],
      ),
    );
  }

  Widget passwordUser() {
    return Container(
      child: TextFormField(
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          icon: Icon(
            Icons.lock,
            color: Colors.amber,
          ),
          hintText: 'password',
          labelText: 'Contraseña',
          labelStyle: TextStyle(
            color: Colors.black,
          ),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
        ),
      ),
    );
  }

  Widget buttonRegister() {
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
          bloc.registerNewUser();
          Navigator.pushNamed(context, 'retroalimentacion');
        });
  }
}
