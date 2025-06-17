import 'package:flutter/material.dart';
import 'package:recla/src/gamification/presentation/screens/beneficios.dart';
import 'package:recla/src/gamification/presentation/screens/tabla_clasificacion.dart';
import 'package:recla/src/platform/data/fake/datos_compra_productos.dart';
import 'package:recla/src/platform/data/fake/datos_tipo.dart';
import 'package:recla/src/platform/data/fake/datos_tipo_material.dart';
import 'package:recla/src/platform/presentation/screens/perfil_eco.dart';
import 'package:recla/src/platform/presentation/widgets/botones_tipo.dart';
import 'package:recla/src/platform/presentation/widgets/botones_tipo_material.dart';
import 'package:recla/src/platform/presentation/widgets/navbar.dart';
import 'package:recla/src/platform/presentation/widgets/tarjeta_compra_producto.dart';


class CompraProductos extends StatefulWidget {
  const CompraProductos({super.key});

  @override
  State<CompraProductos> createState() => _CompraProductosState();
}

class _CompraProductosState extends State<CompraProductos> {
    int opcionSeleccionada = 0; //La opción 0 es de compra productos

    void _onItemTapped(int index) {
    setState(() {
      opcionSeleccionada = index;
    });

    // NAVEGACIÓN BASADA EN LA OPCIÓN SELECCIONADA
    if (index == 4) {
      Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (_) => const PerfilEcoPagina()));
    } else if (index == 2) {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => const TablaClasificacionPagina()),
      );
    } else if (index == 1) {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => const BeneficiosPagina()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            centerTitle: true,
            title: Text(
                'COMPRA DE PRODUCTOS',
                style: Theme.of(context).textTheme.titleMedium,
            ),
        automaticallyImplyLeading: false,
        actions: [
            IconButton(
                icon: Icon(
                    Icons.add_circle_outline_outlined,
                    size: 24, // Ajusta el tamaño del icono si es necesario
                ),
                onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Funcionalidad en desarrollo')),
                    );
                },
            ),
        ],
        ),
        body: Container(
            padding: const EdgeInsets.all(5.0),
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //Llamada al widget BotonesTipoMaterial
                      BotonesTipoMaterial(
                        plastico: datosTiposMaterial['plastico'] ??0,
                        carton: datosTiposMaterial['carton'] ?? 0,
                        metal: datosTiposMaterial['metal'] ?? 0,
                        vidrio: datosTiposMaterial['vidrio'] ?? 0,
                      ),
                      const SizedBox(height: 8.0),

                      //Llamada al widget BotonesTipo
                      BotonesTipo(
                        material: datosTipoCompra['material'] ?? 0,
                        producto: datosTipoCompra['producto'] ?? 0,
                      ),
                      const SizedBox(height: 10.0),
                      
                      //TARJETAS DE PRODUCTOS
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.75,
                        child: GridView.builder(
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5,
                            childAspectRatio: 0.9,
                          ),
                          itemCount: datosCompraProductos.length,
                          itemBuilder: (context, index) {
                            final producto = datosCompraProductos[index];
                            return TarjetaCompraProductos(
                              fotoProducto: producto['foto_producto'] as String,
                              nombreProducto: producto['nombre_producto'] as String,
                              tipo: producto['tipo'] as int,
                              precio: producto['precio'] as int,
                            );
                          },
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