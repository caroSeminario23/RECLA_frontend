import 'package:flutter/material.dart';
import 'package:recla/src/gamification/data/fake/tabla_clasificacion_fake.dart';
import 'package:recla/src/gamification/presentation/screens/beneficios.dart';
import 'package:recla/src/gamification/presentation/widgets/posiciones_tabla.dart';
import 'package:recla/src/platform/presentation/screens/perfil_eco.dart';
import 'package:recla/src/platform/presentation/widgets/navbar.dart';

class TablaClasificacionPagina extends StatefulWidget {
  const TablaClasificacionPagina({super.key});

  @override
  State<TablaClasificacionPagina> createState() => _TablaClasificacionPaginaState();
}

class _TablaClasificacionPaginaState extends State<TablaClasificacionPagina> {
  int opcionSeleccionada = 2; // Tabla de clasificación es la opción 2

  void _onItemTapped(int index) {
    setState(() {
      opcionSeleccionada = index;
    });

    // NAVEGACIÓN BASADA EN LA OPCIÓN SELECCIONADA
    if (index == 4) {
      Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (_) => const PerfilEcoPagina()));
    } else if (index == 1) {
      Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (_) => const BeneficiosPagina()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'TABLA DE CLASIFICACIÓN',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        automaticallyImplyLeading: false,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // TÍTULO PRINCIPAL
              Text('RESULTADOS',
                  style: Theme.of(context).textTheme.titleLarge),
              
              // ESPACIO ENTRE TÍTULO Y SUBTÍTULO
              Text('${tablaFake['inicio']} AL ${tablaFake['fin']}',
                  style: Theme.of(context).textTheme.titleLarge),

              // ESPACIO ENTRE TÍTULO Y LÍNEA DIVISORA
              const SizedBox(height: 7),

              // LÍNEA DIVISORA
              Divider(
                thickness: 2,
                color: Theme.of(context).colorScheme.outlineVariant,
              ),

              // ESPACIO ENTRE LÍNEA Y POSICIONES
              const SizedBox(height: 10),

              PosicionesTabla(posiciones: posicionesFake)
              
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
