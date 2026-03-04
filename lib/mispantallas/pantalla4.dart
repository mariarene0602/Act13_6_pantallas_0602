import 'package:flutter/material.dart';

class Pantalla4 extends StatelessWidget {
  const Pantalla4({super.key});
  final Color navyBlue = const Color(0xFF001F3F);
  final Color gold = const Color(0xFFD4AF37);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: navyBlue,
        centerTitle: true,
        // Nombre del alumno en el título según solicitado
        title: Text(
          "NOSOTROS María Hernández 6I", 
          style: TextStyle(color: gold, fontWeight: FontWeight.bold, fontSize: 14)
        ),
        iconTheme: IconThemeData(color: gold),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ESPACIO PARA TU IMAGEN (Abarca la parte superior del boceto)
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: navyBlue.withOpacity(0.2)),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  // REEMPLAZA ESTA URL CON TU IMAGEN
                  child: Image.network(
                    "https://raw.githubusercontent.com/mariarene0602/Imagenes-pantalla/refs/heads/main/nosotros.jpg", 
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              
              const SizedBox(height: 25),

              // TÍTULO SUBRAYADO (Como en el dibujo)
              Center(
                child: Column(
                  children: [
                    Text(
                      "¿QUIÉNES SOMOS?", 
                      style: TextStyle(color: navyBlue, fontWeight: FontWeight.bold, fontSize: 20)
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      height: 2,
                      width: 150,
                      color: gold, // Línea de subrayado dorada
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // DESCRIPCIÓN GENERAL
              Text(
                "En Canis Academia nos dedicamos al entrenamiento y educación canina basado en esfuerzo positivo, comunicación clara y bienestar animal.",
                textAlign: TextAlign.center,
                style: TextStyle(color: navyBlue, fontSize: 14, height: 1.4),
              ),

              const SizedBox(height: 25),

              // CUADRO DE MISIÓN (Fondo celeste aqua)
              _buildSectionBox(
                "Nuestra Misión", 
                "Brindar entrenamiento canino profesional que mejore la conducta, la obediencia y la calidad de vida de los perros."
              ),

              const SizedBox(height: 15),

              // CUADRO DE VISIÓN (Fondo celeste aqua)
              _buildSectionBox(
                "Nuestra Visión", 
                "Ser una academia canina reconocida por resultados efectivos, trato ético y educación responsable hacia los animales."
              ),

              const SizedBox(height: 30),

              // ICONOS INFERIORES (Pata verde y Birrete)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Icono de Pata Verde
                  Column(
                    children: [
                      Icon(Icons.pets, size: 70, color: Colors.green[600]),
                      const SizedBox(height: 5),
                      const Text("VALORES", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
                    ],
                  ),
                  // Icono de Birrete Azul
                  Column(
                    children: [
                      Icon(Icons.school, size: 70, color: navyBlue),
                      const SizedBox(height: 5),
                      const Text("EDUCACIÓN", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // Widget para los cuadros de texto celestes del dibujo
  Widget _buildSectionBox(String title, String content) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFFE0F7FA), // Color Celeste Aqua similar al dibujo
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: const Color(0xFF80DEEA), width: 1.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title, 
            style: TextStyle(color: navyBlue, fontWeight: FontWeight.bold, fontSize: 16)
          ),
          const SizedBox(height: 8),
          Text(
            content, 
            style: TextStyle(color: navyBlue.withOpacity(0.8), fontSize: 14, height: 1.3)
          ),
        ],
      ),
    );
  }
}