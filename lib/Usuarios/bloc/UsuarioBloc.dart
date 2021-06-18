import 'package:flutter/material.dart';
import 'package:gotaxiapp/Usuarios/models/Usuario.dart';
import 'package:gotaxiapp/Usuarios/repository/UsuarioRepository.dart';
import 'package:reactive_forms/reactive_forms.dart';

class UsuarioBloc {
  final UsuarioRepository usuarioRepository;

  UsuarioBloc({@required this.usuarioRepository})
      : assert(usuarioRepository != null);

  Future<Usuario> createUser(Usuario user) async {
    return await usuarioRepository.createUser(user);
  }

  final FormGroup form = FormGroup({
    'idRol': FormControl<String>(),
    'nombre': FormControl<String>(),
    'fechaNacimiento': FormControl<DateTime>(),
    'correo': FormControl<String>(),
    'contrasenia': FormControl<String>(),
    'telefono': FormControl<String>(),
  });

  Future<void> registerNewUser() async {
    try {
      if (form.valid) {
        var usuario = Usuario.fromJson(form.value);
        await createUser(usuario);
      }
    } catch (e) {}
  }
}
