import 'package:flutter/material.dart';
import '../../data/fake/estatus_fake.dart';
import '../widgets/estatus.dart';

class EstatusScreen extends StatelessWidget {
  const EstatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Estatus del Aprendiz')),
      body: Center(
        child: Estatus(
          imgAprendiz: estatusFake['img_aprendiz'],
          nombreAprendiz: estatusFake['nombre_aprendiz'],
          expAprendiz: estatusFake['exp_aprendiz'],
          puestoAprendiz: estatusFake['puesto_aprendiz'],
        ),
      ),
    );
  }
}
