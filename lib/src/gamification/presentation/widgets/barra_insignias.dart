import 'package:flutter/material.dart';

class BarraInsignias extends StatelessWidget {
  final List<String> insignias;

  const BarraInsignias({super.key, required this.insignias});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // SUBTÍTULO CENTRADO
        Text(
          'MIS INSIGNIAS:',
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),

        // LISTA HORIZONTAL DE INSIGNIAS
        SizedBox(
          height: 60, // altura fija para que no se recorte
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children:
                  insignias.map((url) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Image.network(url, width: 50, height: 50),
                    );
                  }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
