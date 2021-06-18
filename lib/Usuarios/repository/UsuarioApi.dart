import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gotaxiapp/Usuarios/models/Usuario.dart';
import 'dart:async';

import 'package:http/http.dart' as http;

class UsuarioAPI {
  var baseURL = 'https://localhost:44303';
  var rolUrl = 'https://localhost:44303/api/roles';

  final http.Client httpClient;

  UsuarioAPI({@required this.httpClient}) : assert(httpClient != null);

  Future<Usuario> createUser(Usuario user) async {
    final res = await httpClient.post(
      Uri.http(baseURL, '/usuarios'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        "idUsuario": user.idUsuario,
        "idRol": user.idRol,
        "nombre": user.nombre,
        "fechaNacimiento": user.fechaNacimiento,
        "correo": user.correo,
        "contrasenia": user.contrasenia,
        "telefono": user.telefono,
      }),
    );

    if (res.statusCode == 200) {
      return Usuario.fromJson(jsonDecode(res.body));
    } else {
      throw Exception('Failed to create user.');
    }
  }

  Future<List<Usuario>> getUsers() async {
    try {
      final res = await http.get(Uri.http(baseURL, '/usuarios'));

      if (res.statusCode == 200) {
        final users = jsonDecode(res.body) as List;
        return users.map((user) => Usuario.fromJson(user)).toList();
      } else {
        throw Exception('Failed to load Users.');
      }
    } catch (e) {
      print("Exception thrown $e");
    }
  }

  Future<Usuario> getUserById(int id) async {
    try {
      final res = await http.get(Uri.http(baseURL, '/usuarios/$id'));

      if (res.statusCode == 200) {
        final user = jsonDecode(res.body) as Usuario;
        return user;
      } else {
        throw Exception('Failed to load User.');
      }
    } catch (e) {
      print("Exception thrown $e");
    }
    return null;
  }
}
