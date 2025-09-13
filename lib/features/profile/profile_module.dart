import 'package:flutter_modular/flutter_modular.dart';
import 'package:supertodolist/features/profile/presentation/pages/profile_page.dart';

class ProfileModule extends Module {
  @override
  void routes(r) {
    r.child(
      Modular.initialRoute,
      child: (context) => ProfilePage(),
    );
  }
}
