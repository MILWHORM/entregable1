import 'package:flutter/material.dart';
import 'login.dart'; // Asegúrate de importar el archivo correcto para la página de inicio de sesión

class Register extends StatelessWidget {
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
              _inputFields(context),
              _registerButton(context),
              _loginLink(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _header(BuildContext context) {
    return Column(
      children: [
        Text(
          "REGISTRO",
          style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlue),
        ),
        Text(
          "REGISTRATE",
          style: TextStyle(color: Colors.blue),
        ),
      ],
    );
  }

  Widget _inputFields(BuildContext context) {
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
            hintText: "Apellido",
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
            hintText: "Correo electrónico",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.email),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: "Número de celular",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.phone),
          ),
        ),
      ],
    );
  }

  Widget _registerButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Aquí puedes agregar la lógica para registrar al usuario
      },
      child: Text(
        "REGISTRATE",
        style: TextStyle(fontSize: 20, color: Colors.blueAccent),
      ),
      style: ElevatedButton.styleFrom(
        shape: StadiumBorder(),
        padding: EdgeInsets.symmetric(vertical: 16),
      ),
    );
  }

  Widget _loginLink(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            // Navegar a la página de inicio de sesión cuando se presiona el enlace
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
          },
          child: Text("Ir a inicio de sesión",
              style: TextStyle(color: Colors.blueAccent)),
        ),
      ],
    );
  }
}
