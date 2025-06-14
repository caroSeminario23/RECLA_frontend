import 'package:flutter/material.dart';
import 'package:recla/src/platform/presentation/screens/perfil_eco.dart';

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
              'assets/images/logos/recla_logo1.png',
              width: 100,
              height: 100,
            ),

            //Texto de bienvenida
            Text('BIENVENIDO', style: Theme.of(context).textTheme.displaySmall),
            SizedBox(height: 48), //Espacio entre el logo y el texto
            //Ingreso de email
            Align(
              alignment: Alignment.center,
              child: Container(
                //width: MediaQuery.of(context).size.width - 30,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Correo electrónico',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),

            //Ingreso de contraseña
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                //width: MediaQuery.of(context).size.width - 30,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock_outline),
                  ),
                ),
              ),
            ),
            SizedBox(height: 24),

            //Botón de inicio de sesión
            SizedBox(
              width: MediaQuery.of(context).size.width - 30,
              //width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (_) => PerfilEcoPagina()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Theme.of(context)
                          .colorScheme
                          .secondaryContainer, // Cambia el color del botón
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.outline,
                    width: 1.0,
                  ),
                  elevation: 0, // Elimina la sombra del botón
                ),
                child: Text(
                  'Iniciar sesión'.toLowerCase().replaceFirst(
                    'i',
                    'I',
                  ), // Capitaliza la primera letra
                ),
              ),
            ),

            //Botón de olvidé mi contraseña
            SizedBox(
              width: MediaQuery.of(context).size.width - 30,
              //width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Funcionalidad en desarrollo'),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.tertiaryContainer, // Cambia el color del botón
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.onTertiaryFixedVariant,
                    width: 1.0,
                  ),
                  elevation: 0, // Elimina la sombra del botón
                ),
                child: Text(
                  'Olvidé mi contraseña'.toLowerCase().replaceFirst(
                    'o',
                    'O',
                  ), // Capitaliza la primera letra
                ),
              ),
            ),

            //Botón de crear cuenta
            SizedBox(
              width: MediaQuery.of(context).size.width - 30,
              //width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Funcionalidad en desarrollo'),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.errorContainer, // Cambia el color del botón
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.onErrorContainer,
                    width: 1.0,
                  ),
                  elevation: 0, // Elimina la sombra del botón
                ),
                child: Text(
                  'Crear cuenta'.toLowerCase().replaceFirst(
                    'c',
                    'C',
                  ), // Capitaliza la primera letra
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
