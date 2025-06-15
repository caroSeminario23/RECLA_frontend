import 'package:flutter/material.dart';
import '../../data/fake/datos_usuario_fake.dart';
import '../widgets/foto_perfil.dart';
import 'package:recla/src/gamification/presentation/widgets/puntos.dart';

class PerfilEcoPagina extends StatelessWidget {
  const PerfilEcoPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PERFIL ECOAPRENDIZ'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Funcionalidad en desarrollo')),
              );
            },
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //DATOS DEL USUARIO
            Center(
              child: PresentacionUsuario(
                fotoAprendiz: datosUsuarioFake['foto_aprendiz'],
                experiencia: datosUsuarioFake['experiencia'],
                nombre: datosUsuarioFake['nombre'],
                distrito: datosUsuarioFake['distrito'],
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TipoPuntaje(
                    imagenItem: 'assets/images/icono_racha.png',
                    puntaje: '15 días',
                  ),
                  TipoPuntaje(
                    imagenItem: 'assets/images/icono_experiencia.png',
                    puntaje: '150 EXP',
                  ),
                  TipoPuntaje(
                    imagenItem: 'assets/images/icono_monedas.png',
                    puntaje: '1000 PTS',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
