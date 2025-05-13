import 'package:flutter/material.dart'; //Importación de la biblioteca de Flutter
import 'package:recla/src/config/color.dart';
import 'package:recla/src/features/bienvenida/bienvenida_screen.dart'; //Importación del archivo de colores

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RECLA',
      theme: ThemeData.from(colorScheme: MaterialTheme.lightScheme()),
      home: const BienvenidaScreen(),
    );
  }
}