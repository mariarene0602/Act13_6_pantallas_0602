import 'package:flutter/material.dart';

class Pantalla6 extends StatelessWidget {
  const Pantalla6({super.key});
  final Color navyBlue = const Color(0xFF001F3F);
  final Color gold = const Color(0xFFD4AF37);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: navyBlue,
        title: Text(
          "COMPRAR CURSO María Hernández 6I", 
          style: TextStyle(color: gold, fontWeight: FontWeight.bold, fontSize: 16)
        ),
        iconTheme: IconThemeData(color: gold),
      ),
      // Mantenemos el SingleChildScrollView para que puedas bajar con el dedo
      body: SingleChildScrollView( 
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Container(
            // ELIMINAMOS 'height' fijo para evitar la franja amarilla
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.blue[300]!, width: 2),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                )
              ],
            ),
            child: Column(
              // Usamos MainAxisSize.min para que el contenedor se ajuste al contenido
              mainAxisSize: MainAxisSize.min, 
              children: [
                // IMAGEN
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
                  child: Image.network(
                    "https://raw.githubusercontent.com/mariarene0602/Imagenes-pantalla/refs/heads/main/cachorro.jpg", 
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 250, // Le damos una altura fija solo a la imagen
                  ),
                ),
                
                // CONTENIDO
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Text(
                        "PUPPY START", 
                        style: TextStyle(color: navyBlue, fontWeight: FontWeight.bold, fontSize: 26)
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.calendar_month, color: Colors.orange[700], size: 24),
                          const Text("  4 semanas", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                        ],
                      ),
                      
                      const Divider(height: 40, thickness: 1.5),
                      
                      // LISTA DE DETALLES
                      _puntoDetalle("Educación positiva básica"),
                      _puntoDetalle("Socialización controlada"),
                      _puntoDetalle("Comandos de obediencia"),
                      _puntoDetalle("Manual digital incluido"), // Agregué uno más para que se vea más largo
                      
                      const SizedBox(height: 30),
                      
                      // BOTÓN
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange[800],
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                            elevation: 5,
                          ),
                          onPressed: () {
                            // Acción de compra
                          },
                          child: const Text(
                            "COMPRAR CURSO", 
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _puntoDetalle(String texto) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6), // Un poco más de espacio vertical
      child: Row(
        children: [
          Icon(Icons.check_circle, color: navyBlue, size: 20),
          const SizedBox(width: 12),
          Text(texto, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}