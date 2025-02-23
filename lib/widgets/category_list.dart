import 'package:flutter/material.dart';
import '../data/item_suggestions.dart'; // Importa o mapa de categorias e sugestões

class CategoryList extends StatelessWidget {
  final Function(String) onCategorySelected;

  const CategoryList({super.key, required this.onCategorySelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Categorias:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        // Lista de categorias
        ListView.builder(
          shrinkWrap: true, // Impede que a lista ocupe mais espaço do que o necessário
          physics: NeverScrollableScrollPhysics(), // Impede rolagem interna
          itemCount: itemSuggestions.keys.length,
          itemBuilder: (context, index) {
            final categoria = itemSuggestions.keys.elementAt(index);
            return ListTile(
              leading: Icon(Icons.category, color: Colors.orange), // Ícone de categoria
              title: Text(categoria),
              tileColor: Colors.orange.shade50, // Cor de fundo
              onTap: () {
                onCategorySelected(categoria); // Chama a função para selecionar a categoria
              },
            );
          },
        ),
      ],
    );
  }
}
