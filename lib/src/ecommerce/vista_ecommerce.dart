import 'package:flutter/material.dart';
import 'package:recla/src/features/perfil_ecoaprendiz/perfil_ecoaprendiz.dart';
//import 'package:recla/src/publicacion/vista_publicacion.dart';

class VistaEcommerce extends StatefulWidget {
  const VistaEcommerce({super.key});

  @override
  State<VistaEcommerce> createState() => _VistaEcommerceState();
}

class _VistaEcommerceState extends State<VistaEcommerce> {
  List<String> selectedFilters = [];

  final List<Map<String, dynamic>> productos = [
    {
      'nombre': 'Botella reciclada',
      'precio': 100,
      'imagen': 'assets/images/logo_principal.png',
    },
    {
      'nombre': 'Cuaderno de papel reciclado',
      'precio': 2000,
      'imagen': 'assets/images/logo_principal.png',
    },
    {
      'nombre': 'Lata reciclada',
      'precio': 150,
      'imagen': 'assets/images/logo_principal.png',
    },
    {
      'nombre': 'Envase de vidrio',
      'precio': 300,
      'imagen': 'assets/images/logo_principal.png',
    },
    {
      'nombre': 'Envase de vidrio',
      'precio': 300,
      'imagen': 'assets/images/logo_principal.png',
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('E-commerce')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner superior
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo_principal.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                color: Colors.grey.withOpacity(0.6),
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'RECLA',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Encuentra productos reciclados y reciclables',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),

            // Filtros tipo chips
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Wrap(
                spacing: 10,
                children: ['Plástico', 'Papel', 'Metal', 'Vidrio'].map((label) {
                  return FilterChip(
                    label: Text(label),
                    selected: selectedFilters.contains(label),
                    onSelected: (bool selected) {
                      setState(() {
                        selected
                            ? selectedFilters.add(label)
                            : selectedFilters.remove(label);
                      });
                    },
                    selectedColor: const Color.fromRGBO(165, 214, 167, 1),
                    showCheckmark: false,
                  );
                }).toList(),
              ),
            ),

            // Botones de aplicar y cancelar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedFilters.clear();
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 163, 217, 166),
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Cancelar'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        print('Aplicar Filtros: $selectedFilters');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 163, 217, 166),
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Aplicar filtros'),
                    ),
                  ),
                ],
              ),
            ),

            // Tarjetas de productos
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: productos.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) {
                  final producto = productos[index];
                  return buildProductCard(producto);
                },
              ),
            ),
          ],
        ),
      ),

      // Barra inferior de navegación
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

  Widget buildProductCard(Map<String, dynamic> producto) {
    return GestureDetector(
      /*onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VistaPublicacion(), // Aquí puedes cambiar a la página de detalles del producto
          ),
        );
      },*/
      
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                child: Image.asset(
                  producto['imagen'],
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                producto['nombre'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
              child: Text('Precio: ${producto['precio']} puntos'),
            ),
          ],
        ),
      ),
    );
  }
}
