import 'package:flutter/material.dart';
import 'package:recla/src/platform/data/fake/datos_compra_productos.dart';
import 'package:recla/src/platform/presentation/screens/perfil_eco.dart';
import 'package:recla/src/platform/presentation/widgets/boton_precio.dart';
import 'package:recla/src/platform/presentation/widgets/botones_tipo.dart';
import 'package:recla/src/platform/presentation/widgets/botones_tipo_material.dart';
import 'package:recla/src/platform/presentation/widgets/navbar.dart';

class DetalleCompraProducto extends StatefulWidget {
  final int id;
  const DetalleCompraProducto({super.key, required this.id});

  @override
  State<DetalleCompraProducto> createState() => _DetalleCompraProductoState();
}

class _DetalleCompraProductoState extends State<DetalleCompraProducto> {
  int opcionSeleccionada = 0; // La opción 0 es de compra productos
  void _onItemTapped(int index) {
    setState(() {
      opcionSeleccionada = index;
    });

    // NAVEGACIÓN BASADA EN LA OPCIÓN SELECCIONADA
    if (index == 4) {
      Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (_) => const PerfilEcoPagina()));
    }
  }

  @override
  Widget build(BuildContext context) {
    // BUSCA EL PRODUCTO POR ID
    // Asegúrate de que 'datosCompraProductos' sea una lista de mapas con claves 'id', 'foto_producto', 'nombre_producto', etc.
    final producto = datosCompraProductos.firstWhere(
      (prod) => prod['id'] == widget.id,
    );
    // Asumiendo que los datos de tipo compra están dentro del producto bajo la clave 'tipo_compra'
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'COMPRA DE PRODUCTOS',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(5.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                producto['nombre_producto'],
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 10),
              SizedBox(
                width:
                    MediaQuery.of(
                      context,
                    ).size.width, // Ocupa todo el ancho de la pantalla
                height:
                    MediaQuery.of(context).size.height *
                    0.25, // Ocupa el 25% de la altura de la pantalla
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      8,
                    ), // Bordes redondeados
                    border: Border.all(
                      color:
                          Theme.of(
                            context,
                          ).colorScheme.primary, // Color del marco
                      width: 3, // Grosor del marco
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      8,
                    ), // Bordes redondeados para la imagen
                    child: Image.network(
                      producto['foto_producto'], // URL de la imagen
                      fit:
                          BoxFit
                              .cover, // Ajusta la imagen para cubrir el espacio disponible
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              SingleChildScrollView(
                scrollDirection:
                    Axis.horizontal, // Permite el desplazamiento horizontal
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment
                          .spaceEvenly, // Ajusta la alineación horizontal
                  children: [
                    BotonesTipo(
                      material: producto['material'] ?? 0,
                      producto: producto['producto'] ?? 0,
                    ),
                    const SizedBox(width: 8), // Espacio entre los botones
                    BotonesTipoMaterial(
                      plastico: producto['plastico'] ?? 0,
                      carton: producto['carton'] ?? 0,
                      metal: producto['metal'] ?? 0,
                      vidrio: producto['vidrio'] ?? 0,
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: BotonPrecio(
                  precio: producto['precio'].toString() // Asegúrate de que el precio sea un String,
                ),
              ),
              
            ],
          ),
          
          
        ),
      ),

      bottomNavigationBar: NavBar(
        opcionSeleccionada: opcionSeleccionada,
        onItemTapped: _onItemTapped,
        ),
    );
  }
}
