import 'package:flutter/material.dart';
import '/data/item_suggestions.dart'; // Importa o mapa de categorias e sugestões

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
      ),
      body: SingleChildScrollView( // Envolvendo o conteúdo com SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  labelText: 'Nome da lista',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _salvarNome,
                child: const Text('Salvar Nome'),
              ),
              const SizedBox(height: 20),
              if (_nomeDaLista != null)
                Text(
                  'Nome da lista: $_nomeDaLista',
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              const SizedBox(height: 20),
              const Text(
                'Categorias:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Column(
                children: itemSuggestions.keys.map((categoria) {
                  return ListTile(
                    title: Text(categoria),
                    onTap: () {
                      setState(() {
                        _categoriaSelecionada = categoria;
                      });
                    },
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Ação ao pressionar o FAB
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
