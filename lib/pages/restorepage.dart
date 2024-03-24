import 'package:flutter/material.dart';

class RestorePage extends StatelessWidget {
  final AuthService authService;

  RestorePage({required this.authService});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recuperar Contraseña'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: 'Correo electrónico',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  authService
                      .sendPasswordResetEmail(); // Lógica para enviar correo de recuperación
                },
                child: Text('Enviar'),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Volver al inicio de sesión'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AuthService {
  void sendPasswordResetEmail() {
    // Aquí iría la lógica para enviar un correo de recuperación de contraseña.
    // Puedes comunicarte con tu backend o utilizar un servicio de autenticación como Firebase Auth.
    print('Correo de recuperación enviado.');
  }
}
