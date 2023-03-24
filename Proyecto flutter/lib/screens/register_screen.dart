import 'package:flutter/material.dart';
import 'package:productos_app/screens/login_screen.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _email = '';
  String _password = '';

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Aquí puedes agregar el código para enviar la información del formulario al backend o realizar otras acciones.

      // Ejemplo: Imprimir la información del formulario en la consola.
      print('Username: $_username');
      print('Email: $_email');
      print('Password: $_password');

      // Navegar a otra pantalla.
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de usuario'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nombre de usuario',
                  icon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, ingrese un nombre de usuario.';
                  }
                  return null;
                },
                onSaved: (value) {
                  _username = value!;
                  print('El valor ingresado en "Nombre de usuario" es: $_username');
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Correo electrónico',
                  icon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, ingrese un correo electrónico.';
                  }
                  if (!value.contains('@')) {
                    return 'Por favor, ingrese un correo electrónico válido.';
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value!;
                  print('El valor ingresado en "Correo electrónico" es: $_email');
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  icon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, ingrese una contraseña.';
                  }
                  if (value.length < 8) {
                    return 'La contraseña debe tener al menos 8 caracteres.';
                  }
                  return null;
                },
                onSaved: (value) {
                  _password = value!;
                  print('El valor ingresado en "Contraseña" es: $_password');
                },
              ),
              SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Registrarse'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
