import 'package:flutter/material.dart';

class BotonesTipo extends StatelessWidget{
  final int material;
  final int producto;
  
  const BotonesTipo({
    super.key,
    required this.material,
    required this.producto,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        if (material == 1)
          ElevatedButton.icon(
            onPressed: () {
              // Acción para el botón de Material
            },
            icon: Icon(
              Icons.construction_outlined,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            label: Text('Material', style: Theme.of(context).textTheme.labelLarge,),
            style: ElevatedButton.styleFrom(
              backgroundColor:Theme.of(context).colorScheme.outlineVariant,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Bordes redondeados
              ),
            ),
          ),
        if (producto == 1)
          ElevatedButton.icon(
            onPressed: () {
              // Acción para el botón de Producto
            },
            icon: Icon(
              Icons.pan_tool_outlined,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            label: Text('Producto', style: Theme.of(context).textTheme.labelLarge,),
            style: ElevatedButton.styleFrom(
              backgroundColor:Theme.of(context).colorScheme.outlineVariant,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Bordes redondeados
              ),
            ),
          ),
      ],
    );
  }
}