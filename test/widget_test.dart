import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/pages/welcome_page.dart'; // ajuste o caminho se necessário

void main() {
  testWidgets('Welcome screen displays correctly', (WidgetTester tester) async {
    // Constrói a tela inicial
    await tester.pumpWidget(const MaterialApp(home: WelcomePage()));

    // Verifica se o título "Pet Walk" aparece
    expect(find.text('Pet Walk'), findsOneWidget);

    // Verifica se o botão "Let’s start" aparece
    expect(find.text('Let’s start'), findsOneWidget);

    // Verifica se o texto descritivo aparece
    expect(
      find.textContaining('The Pet Walk app is designed for taking care of your pet'),
      findsOneWidget,
    );

    // Verifica se há uma imagem (por tipo de widget)
    expect(find.byType(Image), findsOneWidget);
  });
}
