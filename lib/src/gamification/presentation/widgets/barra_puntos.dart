import 'package:flutter/material.dart';

class BarraPuntos extends StatelessWidget {
  final String imagenItem;
  final String puntaje;
  final int tipoPuntaje;

  const BarraPuntos({
    Key? key,
    required this.imagenItem,
    required this.puntaje,
    required this.tipoPuntaje,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String formatoPuntaje = switch (tipoPuntaje) {
      1 => 'días',
      2 => 'EXP',
      3 => 'PTOS',
      _ => '',
    };

    return Row(
      mainAxisAlignment:
          MainAxisAlignment.center, // Centra el contenido horizontalmente
      children: [
        Image.asset(imagenItem, width: 30, height: 30),
        const SizedBox(width: 2), // Espacio entre la imagen y el texto
        Text(
          '$puntaje $formatoPuntaje',
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ],
    );
  }
}
