import 'package:flutter/material.dart';
import 'package:recla/src/others/ecommerce/vista_ecommerce.dart';
import 'package:recla/src/others/features/perfil_ecoaprendiz/perfil_ecoaprendiz.dart';

class TablaClasificacion extends StatelessWidget {
  const TablaClasificacion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: const Text('Tabla de Clasificación')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título antes de la tabla
            Padding(
              padding: const EdgeInsets.all(0.0), // Margen alrededor del título
              child:Center(
                child: Text(
                  'Clasificación de Ecoaprendices',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            // Tabla
            DataTable(
              columns: const [
                DataColumn(label: Text('Pos')),
                DataColumn(label: Text('Avatar')),
                DataColumn(label: Text('Nombre')),
                DataColumn(label: Text('Pts')),
                
              ],
              rows: const [
                DataRow(cells: [
                  //DataCell(Text('1')),
                  DataCell(CircleAvatar(
                    backgroundImage: AssetImage('assets/images/icono_medalla_1.jpg'),
                  )),
                  DataCell(CircleAvatar(
                    backgroundImage: AssetImage('assets/images/icono_perfil.png'),
                  )),
                  DataCell(Text('Ecoaprendiz A')),
                  DataCell(Text('100')),
                ]),
                DataRow(cells: [
                  //DataCell(Text('2')),
                  DataCell(CircleAvatar(
                    backgroundImage: AssetImage('assets/images/icono_perfil.png'),
                  )),
                  DataCell(CircleAvatar(
                    backgroundImage: AssetImage('assets/images/icono_perfil.png'),
                  )),
                  DataCell(Text('Ecoaprendiz B')),
                  DataCell(Text('90')),
                ]),
                DataRow(cells: [
                  //DataCell(Text('2')),
                  DataCell(CircleAvatar(
                    backgroundImage: AssetImage('assets/images/icono_perfil.png'),
                  )),
                  DataCell(CircleAvatar(
                    backgroundImage: AssetImage('assets/images/icono_perfil.png'),
                  )),
                  DataCell(Text('Ecoaprendiz B')),
                  DataCell(Text('90')),
                ]),
                DataRow(cells: [
                  DataCell(Text('4')),
                  DataCell(CircleAvatar(
                    backgroundImage: AssetImage('assets/images/icono_perfil.png'),
                  )),
                  DataCell(Text('Ecoaprendiz B')),
                  DataCell(Text('90')),
                ]),
                DataRow(cells: [
                  DataCell(Text('5')),
                  DataCell(CircleAvatar(
                    backgroundImage: AssetImage('assets/images/icono_perfil.png'),
                  )),
                  DataCell(Text('Ecoaprendiz B')),
                  DataCell(Text('90')),
                ]),
                
              ],
            ),
          ],
        ),
      ),
      //Barra de navegación inferior
      bottomNavigationBar: BottomNavigationBar(
        items: const [
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
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.push(context
                , MaterialPageRoute(builder: (context) => const VistaEcommerce()),
                );
              //Navigator.pushNamed(context, '/home');
              break;
            case 1:
              Navigator.pushNamed(context, '/eco-aprender');
              break;
            case 2:
              //Navigator.pushNamed(context, '/eco-aprender');
              /*Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TablaClasificacion()),
              );*/
              break;
            case 3:
              Navigator.pushNamed(context, '/chat');
              break;
            case 4:
              //Navigator.pushNamed(context, '/eco-aprender');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PerfilEcoAprendizPage()),
              );
              break;
          }
        },
      ),
    );
  }
}