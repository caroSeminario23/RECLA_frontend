import 'package:flutter/material.dart';
import 'package:recla/src/gamification/presentation/screens/tabla_clasificacion.dart';
import 'theme/theme.dart';

import 'package:recla/src/others/features/bienvenida/bienvenida_screen.dart'; //Importación del archivo de colores

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RECLA',
      theme: AppTheme.lightTheme(),
      home: const BienvenidaScreen()
      //home: const EstatusScreen()
    );
  }
}