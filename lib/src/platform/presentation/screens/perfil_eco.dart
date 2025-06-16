import 'package:flutter/material.dart';
import 'package:recla/src/gamification/data/fake/barra_puntos_fake.dart';
import 'package:recla/src/gamification/data/fake/certificados_fake.dart';
import 'package:recla/src/gamification/data/fake/insignias_fake.dart';
import 'package:recla/src/gamification/presentation/widgets/barra_certificados.dart';
import 'package:recla/src/gamification/presentation/widgets/barra_insignias.dart';
import 'package:recla/src/gamification/presentation/widgets/barra_productos.dart';
import 'package:recla/src/gamification/presentation/widgets/barra_puntos.dart';
import '../../data/fake/datos_usuario_fake.dart';
import '../widgets/foto_perfil.dart';

class PerfilEcoPagina extends StatelessWidget {
  const PerfilEcoPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'PERFIL ECOAPRENDIZ',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Image.asset('../../../../assets/images/icons/ar_stickers.png', width: 24, height: 24),
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

            const SizedBox(height: 16), // Espacio entre la foto y el estatus
            //ESTATUS DEL USUARIO
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BarraPuntos(
                    racha: barraPuntosFake['racha'],
                    exp: barraPuntosFake['exp'],
                    ptosApp: barraPuntosFake['ptosApp'],
                    ptosMunicipales: barraPuntosFake['ptosMunicipales'],
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 16,
            ), // Espacio entre el estatus y la imagen del puesto
            // DIVIDER
            Divider(
              thickness: 2,
              color: Theme.of(context).colorScheme.outlineVariant,
            ),

            const SizedBox(
              height: 16,
            ), // Espacio entre el divider y las insignias
            // INSIGNIAS DEL USUARIO
            Center(
              child: BarraInsignias(
                insignias:
                    barraInsigniasFake
                        .map((insignia) => insignia['url'] ?? '')
                        .toList(),
              ),
            ),

            const SizedBox(
              height: 16,
            ), // Espacio entre el estatus y la imagen del puesto
            // DIVIDER
            Divider(
              thickness: 2,
              color: Theme.of(context).colorScheme.outlineVariant,
            ),

            const SizedBox(
              height: 16,
            ), // Espacio entre el divider y las insignias
            
            // CERTIFICADOS DEL USUARIO
            Center(
              child: BarraCertificados(
                certificados:
                    barraCertificadosFake
                        .map((certificado) => certificado['url'] ?? '')
                        .toList(),
              ),
            ),

            const SizedBox(
              height: 16,
            ), // Espacio entre el estatus y la imagen del puesto
            // DIVIDER
            Divider(
              thickness: 2,
              color: Theme.of(context).colorScheme.outlineVariant,
            ),

            const SizedBox(
              height: 16,
            ), // Espacio entre el divider y las insignias

            // SECCIÓN DE PRODUCTOS
            Center(
              child: BarraProductos())
          ],
        ),
      ),
    );
  }
}
