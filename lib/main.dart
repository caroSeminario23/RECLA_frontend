import 'package:flutter/material.dart';
import 'package:recla/src/gamification/presentation/screens/tabla_clasificacion.dart';
import 'theme/theme.dart';

import 'package:recla/src/platform/presentation/screens/bienvenida.dart'; //Importación del archivo de colores
import 'package:recla/src/platform/presentation/screens/login.dart';
import 'package:recla/src/platform/presentation/screens/perfil_eco.dart';
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
      //home: const Login()
      //home: const PerfilEcoPagina(),
      //home: const EstatusScreen()
    );
  }
}