import 'package:flutter/material.dart';
import 'package:recla/src/gamification/data/fake/coleccion_insignias.dart';
import 'package:recla/src/gamification/presentation/screens/beneficios.dart';
import 'package:recla/src/gamification/presentation/widgets/coleccion_insignias.dart';
import 'package:recla/src/platform/presentation/screens/perfil_eco.dart';
import 'package:recla/src/platform/presentation/widgets/navbar.dart';

class InsigniasPagina extends StatefulWidget {
  const InsigniasPagina({super.key});

  @override
  State<InsigniasPagina> createState() => _InsigniasPaginaState();
}

class _InsigniasPaginaState extends State<InsigniasPagina> {
  int opcionSeleccionada = 1;

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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'INSIGNIAS',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_outlined),
          onPressed: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (_) => const BeneficiosPagina()));
          },
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ColeccionInsignias(
                nombreColeccion: 'COMPRADOR CONSCIENTE',
                nivel: 1,
                insignias:
                    coleccionInsigniasFake
                        .map((insignia) => insignia['url'] ?? '')
                        .toList(),
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
