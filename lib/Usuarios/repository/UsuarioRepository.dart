import 'package:flutter/material.dart';
import 'package:gotaxiapp/Usuarios/models/Usuario.dart';
import 'package:gotaxiapp/Usuarios/repository/UsuarioApi.dart';

class UsuarioRepository {
  final UsuarioAPI usuarioApi;

  UsuarioRepository({@required this.usuarioApi}) : assert(usuarioApi != null);

  Future<Usuario> createUser(Usuario user) async {
    return await usuarioApi.createUser(user);
  }

  Future<List<Usuario>> getUsers() async {
    return await usuarioApi.getUsers();
  }

  Future<Usuario> getUser(int id) async {
    return await usuarioApi.getUserById(id);
  }
}
