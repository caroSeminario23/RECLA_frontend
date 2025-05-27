import 'package:flutter/material.dart';
import 'package:recla/src/features/perfil_ecoaprendiz/perfil_ecoaprendiz.dart';

class VistaPublicacion extends StatefulWidget {
  const VistaPublicacion({super.key});
  @override
  State<VistaPublicacion> createState() => _VistaPublicacionState();
}

class _VistaPublicacionState extends State<VistaPublicacion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Publicación')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título de la publicación
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Producto Reciclado',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            // Imagen del producto
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo_principal.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'Botella reciclada eco',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            //poner precio
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text(
                    'Precio: S/ 100',
                    style: TextStyle(fontSize: 20, color: Colors.green),
                  ),
                  const SizedBox(width: 8),
                  // Imagen al lado del texto
                  Image.asset(
                    'assets/images/logo_principal.png', // Reemplaza con la ruta de tu imagen
                    width: 24, // Ancho de la imagen
                    height: 24, // Alto de la imagen
                  ),
                ],
              ),
            ),

            //chips de tipos de material
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Wrap(
                spacing: 10,
                children:
                    ['Plástico', 'Papel', 'Metal', 'Vidrio'].map((label) {
                      // Lista interna de seleccionados
                      final List<String> selectedFilters = [
                        'Plástico',
                        'Vidrio',
                      ];

                      final bool isSelected = selectedFilters.contains(label);

                      return Chip(
                        label: Text(
                          label,
                          style: TextStyle(
                            color: isSelected ? Colors.black : Colors.black87,
                          ),
                        ),
                        backgroundColor:
                            isSelected
                                ? const Color.fromRGBO(165, 214, 167, 1)
                                : const Color.fromARGB(255, 238, 238, 238),
                        /*shape: StadiumBorder(
                          side: BorderSide(color: Colors.grey.shade400),
                        ),*/
                      );
                    }).toList(),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
              ), // Margen de 10 píxeles a cada lado
              child: Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            //Botón de compra
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
              ), // Margen de 10 en cada lado
              child: SizedBox(
                width:
                    double
                        .infinity, // Ocupa todo el ancho disponible dentro del Padding
                child: ElevatedButton(
                  onPressed: () {
                    // Acción al presionar el botón
                  },
                  child: const Text('Comprar'),
                ),
              ),
            ),
            //Comentarios
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Comentarios',
                    style: TextStyle(fontSize: 20, color: Colors.green),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Acción al presionar "Ver más"
                      print('Cargar más comentarios');
                      // Aquí puedes agregar la lógica para cargar más comentarios
                    },
                    child: Text(
                      'Ver más',
                      style: TextStyle(
                        fontSize: 16,
                        color:
                            Colors
                                .green, // Subrayado para indicar que es un vínculo
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Lista de comentarios
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5, // Número de comentarios
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/logo_principal.png',
                    ),
                  ),
                  title: Row(
                    mainAxisAlignment:
                        MainAxisAlignment
                            .spaceBetween, // Distribuye los elementos
                    children: [
                      Text(
                        'Usuario ${index + 1}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ), // Estilo opcional
                      ),
                      Text(
                        'Fecha',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ), // Estilo de la fecha
                      ),
                    ],
                  ),
                  //fecha del comentario
                  subtitle: Text(
                    'Comenrtario del usuario,Comenrtario del usuario,Comenrtario del usuarioComenrtario del usuario',
                  ),

                  //commentario del usuario
                );
              },
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
              image: AssetImage('assets/images/icono_monedas.png'),
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
              Navigator.pushNamed(context, '/home');
              break;
            case 1:
              Navigator.pushNamed(context, '/eco-aprender');
              break;
            case 2:
              Navigator.pushNamed(context, '/logros');
              break;
            case 3:
              Navigator.pushNamed(context, '/chat');
              break;
            case 4:
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
