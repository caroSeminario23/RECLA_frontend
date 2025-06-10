import 'package:flutter/material.dart';

class Login extends StatelessWidget {
    const Login({super.key});
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
              'BIENVENIDO',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 48), //Espacio entre el logo y el texto
            
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
                /*onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      //builder: (_) => VistaEcommerce(),
                    ),
                  );
                  // Lógica de inicio de sesión
                },*/
                onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                    content: Text('Funcionalidad en desarrollo'),
                    ),
                );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255,208,232,216), // Cambia el color del botón
                  side: const BorderSide(color: Colors.green, width: 1.0),
                  elevation: 0, // Elimina la sombra del botón
                ),
                child: Text(
                    'Iniciar sesión'.toLowerCase().replaceFirst('i', 'I') // Capitaliza la primera letra
                    ),
                ),
            ),

            //Botón de olvidé mi contraseña
            SizedBox(
              width: MediaQuery.of(context).size.width - 32,
              //width: double.infinity,
              child: ElevatedButton(
                /*onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      //builder: (_) => VistaEcommerce(),
                    ),
                  );
                // Lógica de olvidé mi contraseña
              },*/
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                    content: Text('Funcionalidad en desarrollo'),
                    ),
                );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255,192,233,250), // Cambia el color del botón
                  side: const BorderSide(color: Colors.blue, width: 1.0),
                  elevation: 0, // Elimina la sombra del botón
                ),
                child: Text(
                    'Olvidé mi contraseña'.toLowerCase().replaceFirst('o', 'O') // Capitaliza la primera letra
                    ),
                )
            ),
            
            //Botón de crear cuenta
            SizedBox(
              width: MediaQuery.of(context).size.width - 32,
              //width: double.infinity,
              child: ElevatedButton(
                /*onPressed: () {
                  // Lógica de crear cuenta
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      //builder: (_) => RegistroPage(),
                    ),
                  );
                },*/
                onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                    content: Text('Funcionalidad en desarrollo'),
                    ),
                );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255,255,218,214), // Cambia el color del botón
                  side: const BorderSide(color: Colors.red, width: 1.0),
                  elevation: 0, // Elimina la sombra del botón
                ),
                child: Text(
                    'Crear cuenta'
                        .toLowerCase()
                        .replaceFirst('c', 'C') // Capitaliza la primera letra
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}