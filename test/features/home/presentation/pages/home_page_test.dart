import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supertodolist/bootstrap.dart';
import 'package:supertodolist/features/app/app_module.dart';
import 'package:supertodolist/features/app/presentation/app_widget.dart';
import 'package:supertodolist/features/home/presentation/pages/home_page.dart';

void main() {
  setUp(() async {
    SharedPreferences.setMockInitialValues({});
    await Bootstrap.init();
  });

  tearDown(() {
    Modular.destroy();
  });
  testWidgets('Increment Counter on HomePage', (tester) async {
    await Bootstrap.init();

    // Monta o app inteiro com Modular
    await tester.pumpWidget(
      ModularApp(
        module: AppModule(),
        child: AppWidget(),
      ),
    );

    // Espera modular/carregamentos iniciais
    await tester.pumpAndSettle(const Duration(milliseconds: 500));

    // Garante que a HomePage abriu (AppBar com título Home)
    expect(find.byType(HomePage), findsOneWidget);
    expect(find.text('0'), findsOneWidget);

    await tester.tap(find.text('+'));
    await tester.pump();

    expect(find.text('1'), findsOneWidget);
  });

  testWidgets('Increment Counter on HomePage', (tester) async {
    await Bootstrap.init();

    // Monta o app inteiro com Modular
    await tester.pumpWidget(
      ModularApp(
        module: AppModule(),
        child: AppWidget(),
      ),
    );

    // Espera modular/carregamentos iniciais
    await tester.pumpAndSettle(const Duration(milliseconds: 500));

    // Garante que a HomePage abriu (AppBar com título Home)
    expect(find.byType(HomePage), findsOneWidget);
    expect(find.text('0'), findsOneWidget);

    await tester.tap(find.text('+'));
    await tester.pump();

    expect(find.text('1'), findsOneWidget);
  });
}
