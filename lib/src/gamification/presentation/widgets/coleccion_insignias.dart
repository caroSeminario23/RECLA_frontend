import 'package:flutter/material.dart';

class ColeccionInsignias extends StatelessWidget {
  final String nombreColeccion;
  final int nivel;
  final List<String> insignias;

  const ColeccionInsignias({
    super.key,
    required this.nombreColeccion,
    required this.nivel,
    required this.insignias,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // SUBTÍTULO CENTRADO
        Text(
          nombreColeccion,
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),

        const SizedBox(height: 2),

        Text(
          'Nivel $nivel',
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
            color: Theme.of(context).colorScheme.outline,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),

        // LISTA HORIZONTAL DE INSIGNIAS
        SizedBox(
          height: 100,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Centra horizontalmente
              children:
                  insignias.map((url) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Image.network(url, width: 80, height: 80),
                    );
                  }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
