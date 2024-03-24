import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Row(
        children: [
          // Barra lateral
          Container(
            width: 200,
            color: Colors.grey[200],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text('Amigos'),
                  onTap: () {
                    // Aquí puedes manejar la navegación o acciones relacionadas con "Amigos"
                  },
                ),
                ListTile(
                  title: Text('Post'),
                  onTap: () {
                    // Aquí puedes manejar la navegación o acciones relacionadas con "Post"
                  },
                ),
                ListTile(
                  title: Text('Mensajes'),
                  onTap: () {
                    // Aquí puedes manejar la navegación o acciones relacionadas con "Mensajes"
                  },
                ),
              ],
            ),
          ),
          // Contenido principal
          Expanded(
            child: Container(
              color: Colors.white,
              child: Center(
                child: Text('Contenido principal'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
