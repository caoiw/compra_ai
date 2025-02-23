import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Controlador do TextField
  final TextEditingController _controller = TextEditingController();

  // Variável para armazenar o nome
  String? _nomeDaLista;

  // Função para capturar o nome e atualizar o estado
  void _salvarNome() {
    setState(() {
      _nomeDaLista = _controller.text; // Armazena o nome digitado
    });
    _controller.clear(); // Limpa o campo de texto após salvar
  }

  @override
  void dispose() {
    _controller.dispose(); // Libera o controlador quando o widget for destruído
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha Lista'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TextField para o nome da lista
            TextField(
              controller: _controller, // Vincula o controller
              decoration: const InputDecoration(
                labelText: 'Nome da lista',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // Botão para salvar o nome da lista
            ElevatedButton(
              onPressed: _salvarNome,
              child: const Text('Salvar Nome'),
            ),
            const SizedBox(height: 20),

            // Exibir o nome da lista, se não for nulo
            if (_nomeDaLista != null)
              Text(
                'Nome da lista: $_nomeDaLista',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
      ),
  }
}
