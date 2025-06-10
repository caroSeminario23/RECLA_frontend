import 'package:flutter/material.dart';

class ImagenConTexto extends StatelessWidget {
  final String imagePath;
  final String text;

  const ImagenConTexto({
    super.key,
    required this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, // Centra el contenido horizontalmente
      children: [
        Image.asset(
          imagePath,
          width: 30,
          height: 30,
        ),
        const SizedBox(width: 2), // Espacio entre la imagen y el texto
        Text(
          text,
          style: const TextStyle(
            fontSize: 12, // Tamaño del texto
            //fontWeight: FontWeight.bold, // Texto en negrita
          ),
        ),
      ],
    );
  }
}