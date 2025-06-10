import 'package:flutter/material.dart';
import 'package:recla/src/platform/presentation/widgets/foto_perfil.dart';
import 'package:recla/src/gamification/presentation/widgets/puntos.dart';


class PerfilEcoPagina extends StatelessWidget {
  const PerfilEcoPagina({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('PERFIL ECOAPRENDIZ'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            /*onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => FormularioPublicacion()),
              );
              
            },*/
            onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                    content: Text('Funcionalidad en desarrollo'),
                    ),
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
            //Llamada a la imagen de perfil
            Center(
              child: PerfilExp(
                imagePath: 'assets/images/foto_perfil_ejemplo.png',
                experience: 1500,
                name: 'Eliana Verde',
                district: 'San Isidro',
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [
                  ImagenConTexto(
                  imagePath: 'assets/images/icono_racha.png',
                  text: '15 días',
                  ),
                  ImagenConTexto(
                  imagePath: 'assets/images/icono_experiencia.png',
                  text: '150 EXP',
                  ),
                  ImagenConTexto(
                    imagePath: 'assets/images/icono_monedas.png',
                    text: '1000 PTS',)
                ],
              )
            ),
            
          ]
        ),
      ),
    );
  }
}