import 'package:flutter/material.dart';
import '../nav_drawer.dart';
import 'detail_screen.dart';
import '../entity/accion.dart';

class ListScreen extends StatelessWidget {
final List<Accion> acciones = [
  Accion(
    titulo: 'Reciclaje plástico',
    fecha: '10 de mayo de 2025',
    descripcion: 'Llevé 10 botellas al punto limpio en el centro de Talca.',
  ),
  Accion(
    titulo: 'Transporte sostenible',
    fecha: '9 de mayo de 2025',
    descripcion: 'Fui al trabajo en bicicleta durante toda la semana.',
  ),
  Accion(
    titulo: 'Reducción de consumo',
    fecha: '7 de mayo de 2025',
    descripcion: 'No compré productos plásticos desechables este mes.',
  ),
];

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text("Acciones Ecológicas"),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: acciones.length,
        itemBuilder: (context, index) {
          final accion = acciones[index];
          return ListTile(
            leading: Icon(Icons.eco, color: Colors.green),
            title: Text(accion.titulo),
            subtitle: Text(accion.fecha),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailScreen(
                    titulo: accion.titulo,
                    descripcion: accion.descripcion,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}