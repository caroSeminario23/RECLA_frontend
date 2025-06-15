import 'package:flutter/material.dart';
import 'package:recla/src/gamification/presentation/widgets/puntos.dart';

class BarraPuntos extends StatelessWidget {
  final int racha;
  final int exp;
  final int ptosApp;
  final int ptosMunicipales;

  const BarraPuntos({
    Key? key,
    required this.racha,
    required this.exp,
    required this.ptosApp,
    required this.ptosMunicipales,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.center,
      children: [
        TipoPuntaje(
          puntaje: racha, 
          tipoPuntaje: 1),
        
        const SizedBox(height: 8), // Espacio entre los tipos de puntaje
        
        TipoPuntaje(
          puntaje: exp, 
          tipoPuntaje: 2),
        
        const SizedBox(height: 8), // Espacio entre los tipos de puntaje

        TipoPuntaje(
          puntaje: ptosApp, 
          tipoPuntaje: 3),

        const SizedBox(height: 8), // Espacio entre los tipos de puntaje
        
        TipoPuntaje(
          puntaje: ptosMunicipales, 
          tipoPuntaje: 4)
      ],
    );
  }
}
