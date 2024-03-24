import 'package:flutter/material.dart';
import 'register.dart'; // Importa tu página de inicio de sesión
import 'login.dart'; // Importa tu página de registro

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    LoginPage(), // Página de inicio de sesión
    Register(), // Página de registro
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'), // Título de la AppBar
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: 'Iniciar sesión',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add),
            label: 'Registrarse',
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}
