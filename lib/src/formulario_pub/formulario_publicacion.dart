import 'package:flutter/material.dart';
import 'package:recla/src/features/perfil_ecoaprendiz/perfil_ecoaprendiz.dart';


class FormularioPublicacion extends StatefulWidget {
  const FormularioPublicacion({super.key});

  @override
  State<FormularioPublicacion> createState() => _FormularioPublicacionState();
}

class _FormularioPublicacionState extends State<FormularioPublicacion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Formulario de Publicación')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Titulo del formulario
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                'Publica tu producto',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            //Botón para cargar imagen
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ElevatedButton(
                onPressed: () {
                  // Aquí puedes implementar la lógica para cargar una imagen
                },
                child: Text('Cargar Imagen'),
              ),
            ),
            //Imagen del producto
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo_principal.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16.0), // Espacio vertical de 16 píxeles
            TextFormField(
                  //controller: _nombreCtrl,
                  decoration: InputDecoration(
                    labelText: 'Descripción del producto',
                    hintText: 'Escribe una breve descripción',
                    border: OutlineInputBorder(),
                  ),
                  validator: (v) => v!.isEmpty ? 'Obligatorio' : null,
            ),
            SizedBox(height: 10.0),
            TextFormField(
                  //controller: _nombreCtrl,
                  decoration: InputDecoration(
                    labelText: 'Precio del producto',
                    hintText: 'Escribe el precio en puntos',
                    border: OutlineInputBorder(),
                  ),
                  validator: (v) => v!.isEmpty ? 'Obligatorio' : null,
            ),
            SizedBox(height: 10.0),
            //Botón de tipo de producto
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 163, 217, 166),
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Material reciclable'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        print('Aplicar Filtros');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 163, 217, 166),
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Producto reciclado'),
                    ),
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
            //Botón de publicar producto
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
                  child: const Text('Publicar producto'),
                ),
              ),
            ),
          ],

        )
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