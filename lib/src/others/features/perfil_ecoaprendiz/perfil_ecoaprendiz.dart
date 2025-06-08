import 'package:flutter/material.dart';
import 'package:recla/src/others/clasificacion/tabla_clasificacion.dart';
import 'package:recla/src/others/ecommerce/vista_ecommerce.dart';

class PerfilEcoAprendizPage extends StatelessWidget {
  const PerfilEcoAprendizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Espaciado superior
            SizedBox(height: 24),
            // Imagen de perfil
            Image.asset(
              'assets/images/foto_perfil_ejemplo.png',
              width: 100,
              height: 100,
            ),
            // Nombre
            const Text(
              'Eliana Verde',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            // Distrito
            const Text(
              'Distrito: San Isidro',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            // Botones
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Caja 1: Racha
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/icono_racha.png',
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(width: 2),
                      Text('15 días'),
                    ],
                  ),
                ),
                // Caja 2: Experiencia
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/icono_experiencia.png',
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(width: 2),
                      Text('150 EXP'),
                    ],
                  ),
                ),
                // Caja 3: Puntos
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/icono_monedas.png',
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(width: 2),
                      Text('420 PTOS'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/images/icono_ecommerce.png'),
              width: 30,
              height: 30,
            ),
            label: 'Tienda',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/images/icono_cofre.png'),
              width: 30,
              height: 30,
            ),
            label: 'Monedas',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/images/icono_medalla.png'),
              width: 30,
              height: 30,
            ),
            label: 'Logros',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/images/icono_chat.png'),
              width: 30,
              height: 30,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/images/icono_perfil.png'),
              width: 30,
              height: 30,
            ),
            label: 'Perfil',
          ),
        ],
        currentIndex: 4,
        type:
            BottomNavigationBarType
                .fixed, // para que no se centre el ítem seleccionado
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VistaEcommerce()),
              );
            //Navigator.pushNamed(context, '/home');
            //break;
            case 1:
              Navigator.pushNamed(context, '/eco-aprender');
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TablaClasificacion()),
              );
              //Navigator.pushNamed(context, '/logros');
              break;
            case 3:
              Navigator.pushNamed(context, '/chat');
              break;
            case 4:
              // Ya estás en perfil
              break;
          }
        },
      ),
    );
  }
}
