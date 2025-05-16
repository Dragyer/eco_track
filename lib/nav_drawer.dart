import 'package:flutter/material.dart';
import '../screens/profile_screen.dart';
import '../screens/list_screen.dart';
import '../screens/home_screen.dart';

class NavDrawer extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('EcoTrack', style: TextStyle(color: Colors.white, fontSize: 25)),
            decoration: BoxDecoration(color: Colors.green),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Inicio'),
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen())),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Perfil'),
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => ProfileScreen())),
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('Acciones'),
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => ListScreen())),
          ),
        ],
      ),
    );
  }
}