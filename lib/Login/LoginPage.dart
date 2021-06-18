import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email;
  String _pass;

  GlobalKey<FormState> formKey = GlobalKey();

  submit() {
    final isLogin = formKey.currentState.validate();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Image.asset(
                  'assets/GoIcono.png',
                  height: 250.0,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              userTextField(),
              SizedBox(
                height: 15,
              ),
              passwordTextField(),
              SizedBox(
                height: 15.0,
              ),
              bottomLogin(),
              SizedBox(
                height: 15.0,
              ),
              bottomRegister()
            ],
          ),
        ),
      ),
    );
  }

  Widget userTextField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        autofocus: true,
        decoration: InputDecoration(
          icon: Icon(
            Icons.email,
            color: Colors.amber,
          ),
          hintText: 'ejemplo@correo.com',
          labelText: 'Correo Electronico',
          labelStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
        ),
        validator: (correo) {
          if (!correo.contains('@')) {
            return "invalid email";
          }
          return null;
        },
        onSaved: (correo) {
          _email = correo;
        },
        onChanged: (value) {},
      ),
    );
  }

  Widget passwordTextField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: TextFormField(
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          icon: Icon(
            Icons.lock,
            color: Colors.amber,
          ),
          hintText: 'Contraseña',
          labelText: 'Contraseña',
          labelStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
        ),
        validator: (contra) {
          if (!contra.contains('')) {
            return "invalid password";
          }
          return null;
        },
        onSaved: (contra) {
          _pass = contra;
        },
      ),
    );
  }

  Widget bottomLogin() {
    return ElevatedButton(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
          child: Text(
            'Iniciar Sesion',
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
          this.submit();
        });
  }

  Widget bottomRegister() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Unirse ahora?',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black87,
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'user');
                },
                child: Text('Crear Usuario',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    )))
          ],
        ));
  }
}
