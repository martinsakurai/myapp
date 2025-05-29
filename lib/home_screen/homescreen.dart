import 'package:flutter/material.dart';
import 'package:flutter_login/entities/users.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';

  final User usuarioIngresado; // uso final ya que estamos en un Statless widget. Como StatelessWidget no cambia su estado, sus propiedades deberían ser final

  const HomeScreen({super.key, required this.usuarioIngresado}); //aca se dice que se requiere el userName de la pantalla login, la variable esta declarada igual que en appRouter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Bienvenido, ${usuarioIngresado.nombre}, tu direccion es ${usuarioIngresado.direccion}', //utilizo solamente los atributos que necesito. Accedo a ellos gracias al "."
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}