import 'package:flutter/material.dart';


void main() {
  runApp(const MainApp());
}


class MainApp extends StatefulWidget {
  const MainApp({super.key});


  @override
  State<MainApp> createState() => _MainAppState();
}


class _MainAppState extends State<MainApp> {
  TextEditingController usuario = TextEditingController();
  TextEditingController contrasena = TextEditingController();
  String chequeo = '';
  bool mostrarContrasena = false; 
  String mensaje = ""; 
  Color colorFondo = Colors.green; 


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center( 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Bienvenido a MECA-LOGIN"),
              const SizedBox(height: 20),
              Text(comprobacion),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  controller: inputUsuario,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Introduzca su nombre de usuario',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  obscureText: !mostrarContrasena, 
                  controller: inputContrasena,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Introduzca su contraseña',
                  ),
                ),
              ),
              const SizedBox(height: 20),
                 ElevatedButton(
                  onPressed: () {
                    if (inputUsuario.text == "martinsakurai" &&
                        inputContrasena.text == "MarSaku07") {
                      mensaje = "✅ INGRESO CORRECTO";
                      colorFondo = Colors.green;
                    } else {
                      mensaje = "❌ USUARIO O CONTRASEÑA INCORRECTOS";
                      colorFondo = Colors.red;
                    }
                    );
                  },
                  child: const Text('Ingresar'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
