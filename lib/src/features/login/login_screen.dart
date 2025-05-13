import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Logo superior
            Image.asset(
              'assets/images/logo_secundario.png',
              width: 100,
              height: 100,
            ),

            //Texto de bienvenida
            const Text(
              'Bienvenido a RECLA',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            //Ingreso de email
            TextField(
              decoration: InputDecoration(
                labelText: 'Correo electrónico',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),

            //Ingreso de contraseña
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contraseña',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
            ),

            //Botón de inicio de sesión
            ElevatedButton(
              onPressed: () {
                // Lógica de inicio de sesión
              },
              child: Text('Iniciar sesión'),
            ),

            //Botón de olvidé mi contraseña
            ElevatedButton(
              onPressed: () {
                // Lógica de olvidé mi contraseña
              },
              child: Text('Olvidé mi contraseña'),
            ),

            //Botón de crear cuenta
            ElevatedButton(
              onPressed: () {
                // Lógica de crear cuenta
              },
              child: Text('Crear cuenta'),
            ),
          ],
        ),
      ),
    );
  }
}