import 'package:flutter/material.dart';

class Pantalla5 extends StatelessWidget {
  const Pantalla5({super.key});

  final Color navyBlue = const Color(0xFF001F3F);
  final Color gold = const Color(0xFFD4AF37);

  @override
  Widget build(BuildContext context) {
    // LISTA DE TESTIMONIOS: Aquí puedes cambiar los datos de cada uno
    final List<Map<String, String>> testimonios = [
      {
        "perro": "MAX",
        "dueno": "Dueño: Carlos R.",
        "resena": "¡Increíble cambio! Ahora Max obedece todas las órdenes en el parque.",
        "img": "https://images.unsplash.com/photo-1543466835-00a7907e9de1?q=80&w=500"
      },
      {
        "perro": "LUNA",
        "dueno": "Dueña: Ana G.",
        "resena": "La mejor academia. El trato hacia los perritos es con mucho amor y respeto.",
        "img": "https://raw.githubusercontent.com/mariarene0602/Imagenes-pantalla/refs/heads/main/perro2.webp"
      },
      {
        "perro": "ROCKY",
        "dueno": "Dueño: Pedro S.",
        "resena": "Súper recomendados, mi cachorro aprendió a socializar muy rápido.",
        "img": "https://images.unsplash.com/photo-1583337130417-3346a1be7dee?q=80&w=500"
      },
      {
        "perro": "BELLA",
        "dueno": "Dueña: Maria L.",
        "resena": "Excelente servicio, las instalaciones son seguras y los profes muy expertos.",
        "img": "https://images.unsplash.com/photo-1517423440428-a5a00ad493e8?q=80&w=500"
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: navyBlue,
        centerTitle: true,
        title: Text(
          "TESTIMONIOS María Hernández 6I",
          style: TextStyle(color: gold, fontWeight: FontWeight.bold, fontSize: 14),
        ),
        iconTheme: IconThemeData(color: gold),
      ),
      body: Column(
        children: [
          // CUADRÍCULA DE TESTIMONIOS (Igual a tu dibujo)
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(15),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.60, // Formato alargado vertical
              ),
              itemCount: testimonios.length,
              itemBuilder: (context, index) {
                final t = testimonios[index];
                return _cardTestimonio(t['perro']!, t['dueno']!, t['resena']!, t['img']!);
              },
            ),
          ),

          // BARRA INFERIOR PARA ESCRIBIR (Con el lápiz de tu dibujo)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Dejar testimonio...",
                hintStyle: TextStyle(color: Colors.grey[400]),
                suffixIcon: Icon(Icons.edit, color: navyBlue), // El lápiz del dibujo
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _cardTestimonio(String perro, String dueno, String resena, String url) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.blue[200]!, width: 2), // Borde azul claro del dibujo
      ),
      child: Column(
        children: [
          // 1. RECUADRO DE IMAGEN (Arriba)
          Expanded(
            flex: 4,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.network(url, fit: BoxFit.cover, width: double.infinity),
            ),
          ),

          // 2. CONTENIDO DE TEXTO (Líneas de tu dibujo)
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Estrellas doradas
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(5, (index) => Icon(Icons.star, color: gold, size: 14)),
                  ),
                  
                  // Nombre del Perro
                  Text(
                    perro,
                    style: TextStyle(color: navyBlue, fontWeight: FontWeight.w900, fontSize: 14),
                  ),
                  
                  // Nombre del Dueño
                  Text(
                    dueno,
                    style: const TextStyle(color: Colors.black87, fontSize: 11, fontWeight: FontWeight.bold),
                  ),

                  // Reseña (Las líneas de texto de tu dibujo)
                  Text(
                    resena,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey[700], fontSize: 10, fontStyle: FontStyle.italic),
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),

                  // Botón "VER" Naranja
                  SizedBox(
                    width: 70,
                    height: 25,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      ),
                      onPressed: () {},
                      child: const Text("VER", style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)),
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