import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:supertodolist/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('increment counter flow', (tester) async {
    app.main();
    await tester.pumpAndSettle();

    // Garante que o Home carregou
    expect(find.text('Home'), findsOneWidget);

    for (var i = 0; i < 5; i++) {
      await tester.tap(find.byIcon(Icons.add));
      await Future.delayed(Duration(seconds: 1));
    }

    await tester.pumpAndSettle();

    // Verifica se incrementou
    expect(find.text('5'), findsOneWidget);
  });
}
