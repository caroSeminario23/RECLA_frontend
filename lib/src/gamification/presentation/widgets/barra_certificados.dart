import 'package:flutter/material.dart';

class BarraCertificados extends StatelessWidget {
  final List<String> certificados;

  const BarraCertificados({super.key, required this.certificados});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // SUBTÍTULO CENTRADO
        Text(
          'MIS CERTIFICADOS',
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),

        // LISTA HORIZONTAL DE CERTIFICADOS
        SizedBox(
          height: 70, // altura fija para que no se recorte
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children:
                  certificados.map((url) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Image.network(url, height: 60),
                    );
                  }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
