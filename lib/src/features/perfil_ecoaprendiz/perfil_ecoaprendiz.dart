import 'package:flutter/material.dart';

class PerfilEcoAprendizPage extends StatelessWidget {
  const PerfilEcoAprendizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //top bar
            // Logo
            SizedBox(height: 24),
            Image.asset(
              'assets/images/foto_perfil_ejemplo.png',
              width: 100,
              height: 100,
            ),
            // Nombre
            const Text(
              'Eliana Verde',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            // Distrito
            const Text(
              'Distrito: San Isidro',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            // Botones
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Caja 1: Racha
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  /*decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),*/
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      //Icon(Icons.edit, color: Colors.blue),
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
                  /*decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),*/

                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/icono_experiencia.png',
                        width: 30,
                        height: 30,
                      ),
                      //Icon(Icons.delete, color: Colors.red),
                      SizedBox(width: 2),
                      Text('150 EXP'),
                    ],
                  ),
                ),

                // Caja 3: Puntos
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  /*decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),*/
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/icono_monedas.png',
                        width: 30,
                        height: 30,
                      ),
                      //Icon(Icons.share, color: Colors.green),
                      SizedBox(width: 2),
                      Text('420 PTOS'),
                    ],
                  ),
                ),
              ],
            )

          ],
        ),
      ),
      




    );
  }
}