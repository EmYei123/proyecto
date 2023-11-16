import 'package:flutter/material.dart';
import 'categoria.dart';
import '/ScreenMenu.dart';

class acerca extends StatefulWidget {
  @override
  State<acerca> createState() => acercaState();
}

class acercaState extends State<acerca> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Acerca De"),
        backgroundColor: Color.fromARGB(255, 42, 104, 44),
      ),

      backgroundColor: Colors.green,
      body: Container(
        child: GridView.builder(
          itemCount: Menu.length,
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return Container(

              child: Text(
                "Contenido de la pantalla Acerca De",
                style: TextStyle(fontSize: 20),
              ),
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 42, 104, 44),
              ),
              child: Text(
                'Menu Veterinaria',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),

              // Acción al seleccionar la opción 1
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ScreenMenu()));
              },
            ),
            ListTile(
              title: Text('Citas'),
              onTap: () {
                // Acción al seleccionar la opción 1
                Navigator.pop(context); // Cierra el sidebar
              },
            ),
            ListTile(
              title: Text('Tienda'),
              onTap: () {
                Navigator.pop(context); // Cierra el sidebar
              },
            ),
            ListTile(
              title: Text('Sucursales'),
              onTap: () {
                Navigator.pop(context); // Cierra el sidebar
              },
            ),
            ListTile(
              title: Text('Nosotros'),
              onTap: () {
                Navigator.pop(context); // Cierra el sidebar
              },
            ),
            // Agrega más opciones según tus necesidades
          ],
        ),
      ),
    );
  }
}
