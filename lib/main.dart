import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(EcoTrackApp());
}

class EcoTrackApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EcoTrack',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      // Puedes usar el usuario en cualquier pantalla
      home: SplashScreen(), // o ProfileScreen(usuario: usuario),
    );
  }
}