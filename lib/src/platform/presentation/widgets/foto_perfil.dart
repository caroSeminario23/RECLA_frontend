import 'package:flutter/material.dart';

class PerfilExp extends StatelessWidget {
  final String imagePath;
  final int experience;
  final String name;
  final String district;

  const PerfilExp({
    super.key,
    required this.imagePath,
    required this.experience,
    required this.name,
    required this.district,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Imagen y cuadro de experiencia
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            // Imagen circular
            /*Container(
                width: 150, // Ajusta el tamaño del contenedor
                height: 150, // Ajusta el tamaño del contenedor
                decoration: BoxDecoration(
                    shape: BoxShape.circle, // Forma circular
                    border: Border.all(
                    color: const Color.fromARGB(255, 36, 106, 75), // Color del borde
                    width: 4, // Grosor del borde
                    ),
                ),
                child: CircleAvatar(
                    radius: 70, // Tamaño de la imagen
                    backgroundImage: AssetImage(imagePath), // Ruta de la imagen
                ),
            ),*/
            CircleAvatar(
              radius: 70, // Tamaño de la imagen
              backgroundImage: AssetImage(imagePath), // Ruta de la imagen
            ),
            // Cuadro de experiencia
            Positioned(
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 36, 106, 75), // Color del cuadro
                  borderRadius: BorderRadius.circular(30), // Bordes redondeados
                ),
                child: Text(
                  '$experience EXP',
                  style: const TextStyle(
                    color: Colors.white, // Color del texto
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12), // Espacio entre la imagen y el texto
        // Nombres
        Text(
          name,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4), // Espacio entre el nombre y el distrito
        // Distrito
        Text(
          'Distrito: $district',
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}