import 'package:flutter/material.dart';
import 'package:recla/src/gamification/data/fake/stickers_fake.dart';
import 'package:recla/src/gamification/presentation/screens/beneficios.dart';
import 'package:recla/src/gamification/presentation/widgets/seccion_stickers.dart';
import 'package:recla/src/platform/presentation/screens/perfil_eco.dart';
import 'package:recla/src/platform/presentation/widgets/navbar.dart';

class StickersPagina extends StatefulWidget {
  const StickersPagina({super.key});

  @override
  State<StickersPagina> createState() => _StickersPaginaState();
}

class _StickersPaginaState extends State<StickersPagina> {
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
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('STICKERS', style: Theme.of(context).textTheme.titleMedium),
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
              // LÍNEA DIVISORA
              Divider(
                thickness: 2,
                color: Theme.of(context).colorScheme.outlineVariant,
              ),

              // ESPACIO ENTRE LÍNEA Y SECCIÓN 1
              const SizedBox(height: 1),

              // SECCIÓN 1
              ColeccionStickers(
                nombreColeccion: seccionStickers1['nombreColeccion'],
                stickers: seccionStickers1['stickers'],
              ),

              // ESPACIO ENTRE SECCIÓN 1 Y LÍNEA DIVISORA
              const SizedBox(height: 12),

              // LÍNEA DIVISORA
              Divider(
                thickness: 2,
                color: Theme.of(context).colorScheme.outlineVariant,
              ),

              // ESPACIO ENTRE LÍNEA Y SECCIÓN 2
              const SizedBox(height: 1),

              // SECCIÓN 2
              ColeccionStickers(
                nombreColeccion: seccionStickers2['nombreColeccion'],
                stickers: seccionStickers2['stickers'],
              ),

              // ESPACIO ENTRE SECCIÓN 1 Y LÍNEA DIVISORA
              const SizedBox(height: 12),

              // LÍNEA DIVISORA
              Divider(
                thickness: 2,
                color: Theme.of(context).colorScheme.outlineVariant,
              ),

              // ESPACIO ENTRE LÍNEA Y SECCIÓN 2
              const SizedBox(height: 1),

              // SECCIÓN 3
              ColeccionStickers(
                nombreColeccion: seccionStickers3['nombreColeccion'],
                stickers: seccionStickers3['stickers'],
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
