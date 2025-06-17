import 'package:flutter/material.dart';
import 'package:recla/src/gamification/presentation/widgets/estatus.dart';

class PosicionesTabla extends StatelessWidget {
  final List<Map<String, dynamic>> posiciones;

  const PosicionesTabla({super.key, required this.posiciones});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children:
          // MOSTRAR LOS 8 PUESTOS DE LA TABLA
          posiciones.map((posicion) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
              child: PosicionTabla(
                imgAprendiz: posicion['imgAprendiz'],
                nombreAprendiz: posicion['nombreAprendiz'],
                expAprendiz: posicion['expAprendiz'],
                puestoAprendiz: posicion['puestoAprendiz'],
                seleccionado: posicion['seleccionado'],
              ),
            );
          }).toList(),
    );
  }
}
