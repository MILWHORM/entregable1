import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/restorepage.dart';
import 'register.dart'; // Asegúrate de importar el archivo correcto para la página de registro

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons
              .satellite_alt_outlined), // Icono en el lado izquierdo del AppBar
        ),
        body: Container(
          margin: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              _inputField(context),
              _forgotPassword(context),
              _signupButton(context), // Añadir el botón de registro aquí
            ],
          ),
        ),
      ),
    );
  }

  Widget _header(context) {
    return Column(
      children: [
        Text(
          "INICIO DE SESIÓN",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text("Bienvenido a mi login"),
      ],
    );
  }

  Widget _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "Nombre",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.person),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: "Contraseña",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons
                .lock), // Cambiado a un ícono de bloqueo para la contraseña
          ),
          obscureText: true,
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            "Iniciar",
            style: TextStyle(fontSize: 20),
          ),
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(vertical: 16),
          ),
        )
      ],
    );
  }

  Widget _forgotPassword(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => RestorePage(authService: AuthService())),
        );
      },
      child: Text("¿Olvidaste tu contraseña?"),
    );
  }

  Widget _signupButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        // Navegar a la página de registro cuando se presiona el botón
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Register()),
        );
      },
      child: Text("¿No tienes cuenta? Regístrate aquí"),
    );
  }
}
