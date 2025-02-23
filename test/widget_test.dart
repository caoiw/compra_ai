import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:compra_ai/main.dart'; // Ou o caminho correto para o seu arquivo principal

void main() {
  testWidgets('Testa a HomeScreen', (WidgetTester tester) async {
    // Build do aplicativo
    await tester.pumpWidget(MyApp());

    // Verificar se o AppBar está sendo exibido
    expect(find.byType(AppBar), findsOneWidget);
    expect(find.text('Compra AI'), findsOneWidget);

    // Verificar se o TextField está presente
    expect(find.byType(TextField), findsOneWidget);
  });
}
