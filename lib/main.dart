import 'package:flutter/material.dart';
import 'screens/home_screen.dart'; // Certifique-se de que o caminho está correto!

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Minha Lista',
      home: HomeScreen(), // Usando sua HomeScreen aqui
    );
  }
}
