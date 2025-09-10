import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:supertodolist/features/app/app_module.dart';
import 'package:supertodolist/features/app/presentation/app_widget.dart';

void main() {
  testWidgets('alternar tema ao clicar no botão', (tester) async {
    // Monta o app inteiro com Modular
    await tester.pumpWidget(
      ModularApp(
        module: AppModule(),
        child: AppWidget(),
      ),
    );

    // Espera modular/carregamentos iniciais
    await tester.pumpAndSettle();

    // Garante que a HomePage abriu (AppBar com título Home)
    expect(find.widgetWithText(AppBar, 'Home'), findsOneWidget);

    // Pega o MaterialApp atual
    MaterialApp app = tester.widget(find.byType(MaterialApp));
    expect(app.themeMode, ThemeMode.dark);

    // Toca no botão "Trocar"
    await tester.tap(find.text('Trocar'));
    await tester.pumpAndSettle();

    // Verifica se mudou para dark
    app = tester.widget(find.byType(MaterialApp));
    expect(app.themeMode, ThemeMode.light);

    // Toca de novo
    await tester.tap(find.text('Trocar'));
    await tester.pumpAndSettle();

    // Verifica se mudou para light
    app = tester.widget(find.byType(MaterialApp));
    expect(app.themeMode, ThemeMode.dark);
  });
}
