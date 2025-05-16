import 'package:flutter/material.dart';
import '../nav_drawer.dart';

class HomeScreen extends StatelessWidget {
  final String nombre = "Felipe Pérez";
  final String nivel = "EcoLíder ";
  final int totalAcciones = 58;
  final String fechaRegistro = "12 de enero de 2025";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text("Inicio"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "¡Bienvenido, $nombre!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Resumen de tu perfil ecológico", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    _infoLine("Nivel ecológico", nivel),
                    _infoLine("Acciones realizadas", "$totalAcciones"),
                    _infoLine("Miembro desde", fechaRegistro),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Gracias por contribuir a un mundo más sustentable.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoLine(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          SizedBox(width: 8),
          Text("$label: ", style: TextStyle(fontWeight: FontWeight.bold)),
          Text(value),
        ],
      ),
    );
  }
}