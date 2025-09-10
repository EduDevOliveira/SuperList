import 'package:flutter_modular/flutter_modular.dart';
import 'package:supertodolist/features/home/presentation/pages/home_page.dart';

class HomeModule extends Module {
  @override
  void routes(r) {
    r.child(Modular.initialRoute, child: (context) => HomePage());
  }
}
