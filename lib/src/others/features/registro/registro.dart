import 'package:flutter/material.dart';
import 'package:recla/src/others/features/perfil_ecoaprendiz/perfil_ecoaprendiz.dart';

class RegistroPage extends StatefulWidget {
  @override
  _RegistroPageState createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
  final _formKey = GlobalKey<FormState>();

  // 1. Opciones del dropdown
  final List<String> _tipos = ['Eco Aprendiz', 'Aliado Verde'];
  String _tipoSeleccionado = 'Eco Aprendiz';

  // 2. Controllers para Eco Aprendiz
  final _nombreCtrl = TextEditingController();
  final _apellidoCtrl = TextEditingController();
  final _anioNacimientoCtrl = TextEditingController();

  //Distrito desplegable
  final List<String> _distritos = [
    'Ancón',
    'Ate',
    'Barranco',
    'Breña',
    'Carabayllo',
    'Cercado de Lima',
    'Chaclacayo',
    'Chorrillos',
    'Cieneguilla',
    'Comas',
    'El Agustino',
    'Independencia',
    'Jesús María',
    'La Molina',
    'La Victoria',
    'Lince',
    'Los Olivos',
    'Lurigancho',
    'Lurín',
    'Magdalena del Mar',
    'Miraflores',
    'Pachacamac',
    'Pucusana',
    'Pueblo libre',
    'Puente Piedra',
    'Punta Hermosa',
    'Punta Negra',
    'Rímac',
    'San Bartolo',
    'San Borja',
    'San Isidro',
    'San Juan de Lurigancho',
    'San Juan de Miraflores',
    'San Luis',
    'San Martín de Porres',
    'San Miguel',
    'Santa Anita',
    'Santa María del Mar',
    'Santa Rosa',
    'Santiago de Surco',
    'Surquillo',
    'Villa El Salvador',
    'Villa María del Triunfo',
  ];
  String? _distritoSeleccionado;
  //final _distritoCtrl = TextEditingController();
  final _usuarioCtrl = TextEditingController();

  // 3. Controllers para Aliado Verde
  final _institucionCtrl = TextEditingController();
  final _rucCtrl = TextEditingController();

  // 4. Controllers comunes (credenciales)
  final _emailCtrl = TextEditingController();
  final _passCtrl = TextEditingController();

  @override
  void dispose() {
    // Liberar recursos
    _nombreCtrl.dispose();
    _apellidoCtrl.dispose();
    _anioNacimientoCtrl.dispose();
    _usuarioCtrl.dispose();
    _institucionCtrl.dispose();
    _rucCtrl.dispose();
    _emailCtrl.dispose();
    _passCtrl.dispose();
    super.dispose();
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;

    if (_tipoSeleccionado == 'Eco Aprendiz') {
      // Lógica de registro Eco Aprendiz
      final data = {
        'tipo': _tipoSeleccionado,
        'nombre': _nombreCtrl.text,
        'apellido': _apellidoCtrl.text,
        'anio': _anioNacimientoCtrl.text,
        'distrito': _distritoSeleccionado,
        'usuario': _usuarioCtrl.text,
        'email': _emailCtrl.text,
        'pass': _passCtrl.text,
      };
      print('Registro EcoAprendiz: $data');
      // Navegar a la página de perfil Eco Aprendiz
      Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PerfilEcoAprendizPage(),
      ),
    );
    } else {
      // Lógica de registro Aliado Verde
      final data = {
        'tipo': _tipoSeleccionado,
        'institucion': _institucionCtrl.text,
        'ruc': _rucCtrl.text,
        'email': _emailCtrl.text,
        'pass': _passCtrl.text,
      };
      print('Registro AliadoVerde: $data');
    }

    // Aquí podrías enviar a tu API, navegar o mostrar un mensaje.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registro')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // Logo superior
              Image.asset(
                'assets/images/logo_principal.png',
                width: 100,
                height: 100,
              ),
              SizedBox(height: 24),

              // Dropdown tipo de usuario
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Tipo de Usuario',
                  border: OutlineInputBorder(),
                ),
                value: _tipoSeleccionado,
                items: _tipos.map((t) => DropdownMenuItem(
                  value: t,
                  child: Text(t),
                )).toList(),
                onChanged: (v) => setState(() {
                  _tipoSeleccionado = v!;
                }),
              ),
              const SizedBox(height: 20),

              // Campos condicionales
              //Eco Aprendiz
              if (_tipoSeleccionado == 'Eco Aprendiz') ...[
                //Nombre
                TextFormField(
                  controller: _nombreCtrl,
                  decoration: InputDecoration(
                    labelText: 'Nombre',
                    border: OutlineInputBorder(),
                  ),
                  validator: (v) => v!.isEmpty ? 'Obligatorio' : null,
                ),
                const SizedBox(height: 12),
                //Apellido
                TextFormField(
                  controller: _apellidoCtrl,
                  decoration: InputDecoration(
                    labelText: 'Apellido',
                    border: OutlineInputBorder(),
                  ),
                  validator: (v) => v!.isEmpty ? 'Obligatorio' : null,
                ),
                const SizedBox(height: 12),
                //Año de nacimiento
                TextFormField(
                  controller: _anioNacimientoCtrl,
                  decoration: InputDecoration(
                    labelText: 'Año de Nacimiento',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (v) {
                    if (v!.isEmpty) return 'Obligatorio';
                    final year = int.tryParse(v);
                    if (year == null || year < 1900) return 'Año inválido';
                    return null;
                  },
                ),
                const SizedBox(height: 12),
                //Distrito
                // Dropdown para seleccionar el distrito
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: 'Distrito',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.location_on),
                  ),
                  value: _distritoSeleccionado,
                  items: _distritos.map((d) => DropdownMenuItem(
                    value: d,
                    child: Text(d),
                  )).toList(),
                  onChanged: (v) => setState(() => _distritoSeleccionado = v),
                  validator: (v) => v == null ? 'Obligatorio' : null,
                ),
                const SizedBox(height: 12),
                //Nombre de usuario
                TextFormField(
                  controller: _usuarioCtrl,
                  decoration: InputDecoration(
                    labelText: 'Nombre de usuario',
                    border: OutlineInputBorder(),
                  ),
                  validator: (v) => v!.isEmpty ? 'Obligatorio' : null,
                ),

              // Aliado Verde
              ] else ...[
                //Nombre de la institución
                TextFormField(
                  controller: _institucionCtrl,
                  decoration: InputDecoration(
                    labelText: 'Nombre de la institución',
                    border: OutlineInputBorder(),
                  ),
                  validator: (v) => v!.isEmpty ? 'Obligatorio' : null,
                ),
                const SizedBox(height: 12),
                //RUC
                TextFormField(
                  controller: _rucCtrl,
                  decoration: InputDecoration(
                    labelText: 'RUC',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (v) => v!.isEmpty ? 'Obligatorio' : null,
                ),
              ],

              const SizedBox(height: 24),
              // Credenciales Para ambos tipos(Eco Aprendiz y Aliado Verde)
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Credenciales de usuario',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 8),

              // Correo electrónico
              TextFormField(
                controller: _emailCtrl,
                decoration: InputDecoration(
                  labelText: 'Correo electrónico',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (v) => v!.contains('@') ? null : 'Email inválido',
              ),
              const SizedBox(height: 12),
              // Contraseña
              TextFormField(
                controller: _passCtrl,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
                validator: (v) =>
                    v!.length < 6 ? 'Mínimo 6 caracteres' : null,
              ),

              const SizedBox(height: 24),
              // Botón dinámico
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _submit,
                  child: Text(
                    _tipoSeleccionado == 'Eco Aprendiz'
                        ? 'Registrar eco aprendiz'
                        : 'Registrar aliado verde',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
