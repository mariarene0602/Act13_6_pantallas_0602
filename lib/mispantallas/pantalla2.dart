import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  final Color navyBlue = const Color(0xFF001F3F);
  final Color gold = const Color(0xFFD4AF37);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: navyBlue,
        elevation: 10,
        centerTitle: true,
        iconTheme: IconThemeData(color: gold),
        title: Text("CANIS ACADEMIA María Hernández 6I", 
          style: TextStyle(color: gold, fontWeight: FontWeight.bold, letterSpacing: 1.5, fontSize: 18)),
        actions: [
          IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: navyBlue,
          child: Column(
            children: [
              DrawerHeader(child: Center(child: Text("CANIS ACADEMIA", style: TextStyle(color: gold, fontSize: 20)))),
              ListTile(
                leading: Icon(Icons.home, color: gold),
                title: const Text("Inicio", style: TextStyle(color: Colors.white)),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 0.7,
          children: [
            _buildTallCard(context, "Cursos", Icons.menu_book_rounded, '/cursos'),
            _buildTallCard(context, "Nosotros", Icons.groups_rounded, '/nosotros'),
            _buildTallCard(context, "Testimonios", Icons.star_rounded, '/testimonios'),
            _buildTallCard(context, "Comprar curso", Icons.payments_rounded, '/comprar'),
          ],
        ),
      ),
    );
  }

  Widget _buildTallCard(BuildContext context, String title, IconData icon, String ruta) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, ruta),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: navyBlue, width: 2.5),
          boxShadow: [BoxShadow(color: navyBlue.withOpacity(0.1), blurRadius: 10)],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(color: navyBlue, shape: BoxShape.circle),
              child: Icon(icon, size: 45, color: gold),
            ),
            const SizedBox(height: 20),
            Text(title.toUpperCase(), textAlign: TextAlign.center,
                style: TextStyle(color: navyBlue, fontWeight: FontWeight.bold, fontSize: 13)),
            const SizedBox(height: 10),
            Container(width: 40, height: 3, decoration: BoxDecoration(color: gold, borderRadius: BorderRadius.circular(10))),
          ],
        ),
      ),
    );
  }
}