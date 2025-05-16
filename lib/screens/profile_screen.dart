import 'package:flutter/material.dart';
import '../nav_drawer.dart';
import '../entity/usuario.dart';

class ProfileScreen extends StatelessWidget {

  final Usuario usuario = Usuario(
    nombre: "Felipe Pérez",
    email: "felipe.perez@ecotrack.com",
    accionesTotales: 58,
    ubicacion: "Talca, Chile",
    fechaRegistro: "12 de enero de 2025",
    nivel: "EcoLíder 🌿",
    favoritas: ["Reciclaje", "Transporte verde", "Huertos urbanos"],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(title: Text("Perfil del usuario"), backgroundColor: Colors.green),
      body: Center(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 500),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('../../assets/Foto_Perfil.jpg'),
                    ),
                  SizedBox(height: 10),
                  Text(usuario.nombre, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Text(usuario.email, style: TextStyle(color: Colors.grey[700])),
                  SizedBox(height: 20),
                  Divider(),
                  _infoTile(Icons.location_on, "Ubicación", usuario.ubicacion),
                  _infoTile(Icons.calendar_today, "Fecha de registro", usuario.fechaRegistro),
                  _infoTile(Icons.emoji_events, "Nivel ecológico", usuario.nivel),
                  _infoTile(Icons.format_list_numbered, "Total de acciones", "${usuario.accionesTotales} acciones"),
                  _infoTile(Icons.favorite, "Acciones favoritas", usuario.favoritas.join(", ")),
                  SizedBox(height: 20),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.edit),
                    label: Text("Editar perfil"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _infoTile(IconData icon, String titulo, String subtitulo) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: ListTile(
        leading: Icon(icon, color: Colors.green),
        title: Text(titulo, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitulo),
      ),
    );
  }
}