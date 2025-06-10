import 'package:flutter/material.dart';

class Estatus extends StatelessWidget {
  final String imgAprendiz;
  final String nombreAprendiz;
  final int expAprendiz;
  final int puestoAprendiz;

  const Estatus({
    Key? key,
    required this.imgAprendiz,
    required this.nombreAprendiz,
    required this.expAprendiz,
    required this.puestoAprendiz,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String puestoImagePath = switch (puestoAprendiz) {
      1 => '../../../../assets/images/icons/puesto1.png',
      2 => '../../../../assets/images/icons/puesto2.png',
      3 => '../../../../assets/images/icons/puesto3.png',
      4 => '../../../../assets/images/icons/puesto4.png',
      5 => '../../../../assets/images/icons/puesto5.png',
      6 => '../../../../assets/images/icons/puesto6.png',
      7 => '../../../../assets/images/icons/puesto7.png',
      8 => '../../../../assets/images/icons/puesto8.png',
      _ => '../../../../assets/images/icons/puesto_default.png',
    };

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // AVATAR
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.teal, width: 2),
          ),
          child: CircleAvatar(
            backgroundImage: NetworkImage(imgAprendiz),
            backgroundColor: Colors.transparent,
          ),
        ),
        //CircleAvatar(radius: 50, backgroundImage: NetworkImage(imgAprendiz)),
        //const SizedBox(height: 5),

        // ESPACIO ENTRE AVATAR Y TEXTO

        // NOMBRE Y EXPERIENCIA
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              nombreAprendiz,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              '$expAprendiz EXP',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 12),
          ],
        ),

        // PUESTO
        Image.asset(puestoImagePath, width: 50, height: 50),
        const SizedBox(height: 5),
      ],
    );
  }
}
