import 'package:flutter/material.dart';

class BarraProductos extends StatelessWidget {
  const BarraProductos({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // SUBTÍTULO CENTRADO
        Text(
          'MIS PRODUCTOS',
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),

        // BOTÓN PERSONALIZADO
        SizedBox(
          width: double.infinity, // Ancho del botón
          child: ElevatedButton.icon(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Funcionalidad en desarrollo')),
              );
            },
            icon: const Icon(Icons.store_outlined),
            label: const Text('Lo que te ofrezco'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.secondaryContainer, // Fondo verde
              foregroundColor: Theme.of(context).colorScheme.onSecondaryContainer, // Texto e ícono blancos
              side: BorderSide(color: Theme.of(context).colorScheme.outlineVariant, width: 2), // Borde verde oscuro
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), // Opcional: bordes redondeados
              ),
              padding: const EdgeInsets.symmetric(vertical: 12),
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
          ),
        ),
      ],
    );
  }
}