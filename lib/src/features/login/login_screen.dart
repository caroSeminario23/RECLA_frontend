import 'package:flutter/material.dart';
import 'package:recla/src/ecommerce/vista_ecommerce.dart';
import 'package:recla/src/features/registro/registro.dart';
import 'package:recla/src/publicacion/vista_publicacion.dart';
//registo

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
            SizedBox(height: 12), //Espacio entre el logo y el texto
            //Ingreso de email
            /*TextField(
              decoration: InputDecoration(
                labelText: 'Correo electrónico',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),*/

            //Ingreso de email
            Align(
              alignment: Alignment.center,
              child: Container(
                width: MediaQuery.of(context).size.width - 32,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Correo electrónico',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              )
            ),
            SizedBox(height: 12),

            //Ingreso de contraseña
            /*TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contraseña',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
            ),*/
            Align(
              alignment: Alignment.center,
              child: Container(
                width: MediaQuery.of(context).size.width - 32,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
              )
            ),
            SizedBox(height: 24),

            //Botón de inicio de sesión
            SizedBox(
              width: MediaQuery.of(context).size.width - 32,
              //width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => VistaPublicacion(),
                    ),
                  );
                  // Lógica de inicio de sesión
                },
                child: Text('Iniciar sesión'),
                ),
            ),

            //Botón de olvidé mi contraseña
            SizedBox(
              width: MediaQuery.of(context).size.width - 32,
              //width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => VistaEcommerce(),
                    ),
                  );
                // Lógica de olvidé mi contraseña
              },
              child: Text('Olvidé mi contraseña'),
              )
            ),
            
            //Botón de crear cuenta
            SizedBox(
              width: MediaQuery.of(context).size.width - 32,
              //width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Lógica de crear cuenta
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => RegistroPage(),
                    ),
                  );
                },
                child: Text('Crear cuenta'),
              ),
            ),
            
          ],
        ),
      ),
    );
  }

}