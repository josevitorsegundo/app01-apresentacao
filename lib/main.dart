import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Presentation(),
      title: "Apresentação",
    );
  }
}

// Presentation

class Presentation extends StatelessWidget {
  const Presentation({super.key});

  // Custom Style Text
  static const TextStyle customStyleHeader =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const TextStyle customStyle =
      TextStyle(fontSize: 16, decoration: TextDecoration.underline);

  @override
  Widget build(BuildContext context) {
    // Screen Dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Apresentação'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
        backgroundColor: Colors.green,
        child: ListView(
          children: const [
            ListTile(
              title: Text('Opção 1'),
            ),
            ListTile(
              title: Text('Opção 2'),
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          width: screenWidth * 1,
          height: screenHeight * 1, //
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network(
                  "https://avatars.githubusercontent.com/u/24721560?v=4",
                  width: screenWidth * 1,
                  height: screenHeight * 0.4,
                ),
                const SizedBox(height: 12),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person), // Add the person icon
                    SizedBox(
                        width: 8), // Add some spacing between the icon and text
                    Text("Jose Vitor Lopes de Sousa Segundo", style: customStyle),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.work), // Add the person icon
                    SizedBox(
                        width: 8), // Add some spacing between the icon and text
                    Text("Analista de Sistemas", style: customStyle),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.badge), // Add the person icon
                    SizedBox(
                        width: 8), // Add some spacing between the icon and text
                    Text("Matrícula - 2023111epdmd0001", style: customStyle),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.cake), // Add the person icon
                    SizedBox(
                        width: 8), // Add some spacing between the icon and text
                    Text("28", style: customStyle),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.green,
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {
                },
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                },
              ),
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
