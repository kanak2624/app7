import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Project"),
        leading: const Icon(
          Icons.menu,
          size: 40,
          color: Colors.amber,
        ),
        actions: const [Icon(Icons.card_travel), Icon(Icons.notifications)],
      ),
      backgroundColor: const Color.fromARGB(255, 244, 224, 3),
    );
  }
}
