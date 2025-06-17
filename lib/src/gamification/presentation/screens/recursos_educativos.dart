import 'package:flutter/material.dart';
import 'package:recla/src/gamification/data/fake/recursos_educativos_fake.dart';
import 'package:recla/src/gamification/presentation/screens/beneficios.dart';
import 'package:recla/src/gamification/presentation/screens/tabla_clasificacion.dart';
import 'package:recla/src/gamification/presentation/widgets/grupo_re.dart';
import 'package:recla/src/platform/presentation/screens/perfil_eco.dart';
import 'package:recla/src/platform/presentation/widgets/navbar.dart';

class RecursosEducativosPagina extends StatefulWidget {
  const RecursosEducativosPagina({super.key});

  @override
  State<RecursosEducativosPagina> createState() =>
      _RecursosEducativosPaginaState();
}

class _RecursosEducativosPaginaState extends State<RecursosEducativosPagina> {
  int opcionSeleccionada = 1; // Beneficios es la opción 1

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
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'RECURSOS EDUCATIVOS',
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
            children: [GrupoREducativos(recursos: recursosEducativosFake)],
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
