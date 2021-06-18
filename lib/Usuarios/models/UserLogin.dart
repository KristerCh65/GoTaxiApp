import 'package:flutter/foundation.dart';

class UserLogin {
  String correo;
  String contrasenia;

  UserLogin({
    @required this.correo,
    @required this.contrasenia,
  });

  factory UserLogin.fromJson(Map<String, dynamic> json) {
    return UserLogin(
      correo: json['correo'] as String,
      contrasenia: json['contrasenia'] as String,
    );
  }
}
