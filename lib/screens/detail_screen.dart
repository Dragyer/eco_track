import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String titulo;
  final String descripcion;

  const DetailScreen({required this.titulo, required this.descripcion});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          descripcion,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}