import 'package:flutter/material.dart';
import 'mispantallas/Inicio.dart';
import 'mispantallas/pantalla2.dart';
import 'mispantallas/pantalla3.dart';
import 'mispantallas/pantalla4.dart';
import 'mispantallas/pantalla5.dart';
import 'mispantallas/pantalla6.dart';

void main() => runApp(const CanisApp());

class CanisApp extends StatelessWidget {
  const CanisApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Canis Academia',
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFF8F9FA)),
      initialRoute: '/',
      routes: {
        '/': (context) => const Inicio(),
        '/home': (context) => const Pantalla2(),
        '/cursos': (context) => const Pantalla3(),
        '/nosotros': (context) => const Pantalla4(),
        '/testimonios': (context) => const Pantalla5(),
        '/comprar': (context) => const Pantalla6(),
      },
    );
  }
}