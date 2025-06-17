import 'package:flutter/material.dart';
import 'package:recla/src/gamification/presentation/widgets/grupo_stickers.dart';

class ColeccionStickers extends StatelessWidget {
  final String nombreColeccion;
  final List<Map<String, dynamic>> stickers;

  const ColeccionStickers({
    super.key,
    required this.nombreColeccion,
    required this.stickers,
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

        // GRUPO DE STICKERS
        GrupoStickers(stickers: stickers)
      ],
    );
  }
}
