import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    final Color navyBlue = const Color(0xFF001F3F);
    final Color gold = const Color(0xFFD4AF37);

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const SizedBox(height: 60),
            Image.network("https://raw.githubusercontent.com/mariarene0602/Imagenes-pantalla/refs/heads/main/Copia%20de%20logo.png", height: 100),
            const SizedBox(height: 20),
            Text("INGRESA TUS DATOS", style: TextStyle(fontWeight: FontWeight.bold, color: navyBlue)),
            const TextField(decoration: InputDecoration(labelText: "Nombre")),
            const TextField(decoration: InputDecoration(labelText: "Apellidos")),
            const TextField(decoration: InputDecoration(labelText: "Correo electrónico")),
            const TextField(decoration: InputDecoration(labelText: "Contraseña"), obscureText: true),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: navyBlue, foregroundColor: gold),
              onPressed: () => Navigator.pushNamed(context, '/home'),
              child: const Text("REGISTRARSE"),
            )
          ],
        ),
      ),
    );
  }
}