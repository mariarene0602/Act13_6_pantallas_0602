import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  final Color navyBlue = const Color(0xFF001F3F);
  final Color gold = const Color(0xFFD4AF37);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> listaCursos = [
      {
        "titulo": "Puppy Start",
        "desc":
            "Un programa diseñado para perros aproximadamente de 8 a 20 semanas de edad, centrado en la socialización.",
        "precio": "\$1,500",
        "img":
            "https://raw.githubusercontent.com/mariarene0602/Imagenes-pantalla/refs/heads/main/cachorro.jpg",
      },
      {
        "titulo": "Manner & Obedience",
        "desc":
            "Para perros que ya tienen cierta edad y necesitan aprender comandos básicos.",
        "precio": "\$1, 600",
        "img":
            "https://raw.githubusercontent.com/mariarene0602/Imagenes-pantalla/refs/heads/main/curso2.webp",
      },
      {
        "titulo": "Private Coaching",
        "desc":
            "Entrenamiento personalizado a domicilio adaptado a las necesidades específicas.",
        "precio": "\$2,200",
        "img":
            "https://raw.githubusercontent.com/mariarene0602/Imagenes-pantalla/refs/heads/main/curso3.jpg",
      },
      {
        "titulo": "Behavior Modification",
        "desc":
            "Para perros que presentan problemas de conducta más complejos: ractividad, agresión, etc.",
        "precio": "\$1, 800",
        "img":
            "https://raw.githubusercontent.com/mariarene0602/Imagenes-pantalla/refs/heads/main/curso4.jpg",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: navyBlue,
        centerTitle: true,
        title: Text(
          "CURSOS María Hernández 6I",
          style: TextStyle(
            color: gold,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        iconTheme: IconThemeData(color: gold),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(15),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 0.65, // Adjusted for better text fit
        ),
        itemCount: listaCursos.length,
        itemBuilder: (context, index) {
          final curso = listaCursos[index];
          return _cardCurso(
            context,
            curso['titulo']!,
            curso['desc']!,
            curso['precio']!,
            curso['img']!,
          );
        },
      ),
    );
  }

  Widget _cardCurso(
    BuildContext context,
    String titulo,
    String desc,
    String precio,
    String url,
  ) {
    return Card(
      elevation: 5, // Use elevation for a clean shadow
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(color: navyBlue, width: 1.5),
      ),
      clipBehavior:
          Clip.antiAlias, // Ensures the image respects the border radius
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // IMAGE
          Expanded(
            flex: 5,
            child: Image.network(
              url,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
                  Center(child: Icon(Icons.pets, color: navyBlue, size: 40)),
            ),
          ),

          // CONTENT
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    titulo,
                    style: TextStyle(
                      color: navyBlue,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    desc,
                    style: TextStyle(color: Colors.grey[700], fontSize: 10),
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Divider(color: Colors.orange, thickness: 1, height: 8),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      precio,
                      style: TextStyle(
                        color: gold,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
