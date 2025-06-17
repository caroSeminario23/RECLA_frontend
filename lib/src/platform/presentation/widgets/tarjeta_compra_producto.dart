import 'package:flutter/material.dart';

class TarjetaCompraProductos extends StatelessWidget {
  final String fotoProducto;
  final String nombreProducto;
  final int tipo; // 0: Material, 1: Producto
  final int precio;

  const TarjetaCompraProductos({
    super.key,
    required this.fotoProducto,
    required this.nombreProducto,
    required this.tipo,
    required this.precio,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      margin: const EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: Theme.of(context).colorScheme.primary, // Color del borde
          width: 1.0, // Ancho del borde
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(12.0),
            ),
            child: Image.network(
              fotoProducto,
              width: double.infinity,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 12.0),
                Text(
                  nombreProducto,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1, // Limita a una línea
                ),
                const SizedBox(height: 4.0),

                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween, // Alineación horizontal
                  children: [
                    // Caja para el texto "Material" o "Producto"
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 4.0,
                      ), // Espaciado interno
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondaryContainer, // Fondo gris claro
                        borderRadius: BorderRadius.circular(
                          8.0,
                        ), // Bordes redondeados
                      ),
                      child: Text(
                        tipo == 0 ? 'Material' : 'Producto',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSecondaryContainer, 
                        ),
                      ),
                    ),
                    const SizedBox(width: 2.0), // Espacio entre las cajas
                    // Caja para el texto del precio y la imagen
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4.0,
                        vertical: 4.0,
                      ), // Espaciado interno
                      child: Row(
                        children: [
                          Text(
                            '\$${precio.toString()}',
                            style: Theme.of(
                              context,
                            ).textTheme.labelMedium?.copyWith(
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                          ),
                          const SizedBox(
                            width: 2.0,
                          ), // Espacio entre el texto y la imagen
                          Image.asset(
                            'assets/images/icons/precio.png',
                            width:
                                24, // Ajusta el tamaño del icono si es necesario
                            height:
                                24, // Ajusta el tamaño del icono si es necesario
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
