import 'package:flutter/foundation.dart';

class Usuario {
  int idUsuario;
  int idRol;
  String nombre;
  DateTime fechaNacimiento;
  String correo;
  String contrasenia;
  String telefono;

  Usuario(
      {@required this.idUsuario,
      @required this.idRol,
      @required this.nombre,
      @required this.fechaNacimiento,
      @required this.correo,
      @required this.contrasenia,
      @required this.telefono});

  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      idUsuario: json['idUsuario'] as int,
      idRol: json['idRol'] as int,
      nombre: json['nombre'] as String,
      fechaNacimiento: json['fechaNacimiento'] as DateTime,
      correo: json['correo'] as String,
      contrasenia: json['contrasenia'] as String,
      telefono: json['telefono'] as String,
    );
  }
}
