import 'package:flutter/material.dart';
import 'package:recla/src/features/login/login_screen.dart'; // Importa la pantalla de inicio de sesión

class BienvenidaScreen extends StatelessWidget {
  const BienvenidaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Navega automáticamente a LoginScreen después de 5 segundos
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });

    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/logo_principal.png',
          width: 250,
          height: 250,
        ),
      ),
    );
  }
}