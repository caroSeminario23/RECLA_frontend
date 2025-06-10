import 'package:flutter/material.dart';
import 'theme/theme.dart';

import 'package:recla/src/others/features/bienvenida/bienvenida_screen.dart'; //Importación del archivo de colores
import 'package:recla/src/platform/presentation/screens/login.dart';

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
      //home: const BienvenidaScreen()
      home: const Login()
    );
  }
}