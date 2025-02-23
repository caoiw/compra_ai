import 'package:flutter/material.dart';
import 'widgets/category_list.dart'; // Importa o widget de categorias
import 'data/item_suggestions.dart'; // Importa o mapa de categorias e sugestões

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Compra AI',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: HomeScreen(), //Tela inicial
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller = TextEditingController();
  String? _nomeDaLista;
  String? _categoriaSelecionada;

  void _salvarNome() {
    setState(() {
      _nomeDaLista = _controller.text;
    });
    _controller.clear();
  }

  List<Widget> _mostrarItensRecomendados() {
    if (_categoriaSelecionada != null) {
      final itens = itemSuggestions[_categoriaSelecionada];
      if (itens != null) {
        return itens.map((item) => ListTile(title: Text(item))).toList();
      }
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha Lista'),
        centerTitle: true,
        backgroundColor: Colors.orange, // Cor de fundo da AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Campo para digitar o nome da lista
              TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  labelText: 'Nome da lista',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.edit), // Ícone do TextField
                ),
              ),
              const SizedBox(height: 20),
              // Botão para salvar o nome da lista
              ElevatedButton(
                onPressed: _salvarNome,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, // Cor do botão
                  padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 24.0),
                ),
                  child: const Text('Salvar Nome'),

              ),
              const SizedBox(height: 20),
              // Exibe o nome da lista após o botão ser pressionado
              if (_nomeDaLista != null)
                Text(
                  'Nome da lista: $_nomeDaLista',
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              const SizedBox(height: 20),

              // Usando o widget de lista de categorias
              CategoryList(
                onCategorySelected: (categoria) {
                  setState(() {
                    _categoriaSelecionada = categoria;
                  });
                },
              ),
              const SizedBox(height: 20),
              // Exibe os itens recomendados para a categoria selecionada
              if (_categoriaSelecionada != null)
                const Text(
                  'Itens recomendados:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              const SizedBox(height: 10),
              ..._mostrarItensRecomendados(),
            ],
          ),
        ),
      ),
      // FloatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Aqui você pode adicionar a ação desejada para o FAB
        },
        backgroundColor: Colors.orange, // Cor do FAB
        child: const Icon(Icons.add),
      ),
    );
  }
}
