import 'package:flutter_modular/flutter_modular.dart';
import 'package:supertodolist/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:supertodolist/features/home/home_module.dart';
import 'package:supertodolist/features/profile/profile_module.dart';
import 'package:supertodolist/features/tasks/task_module.dart';

class DashboardModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(
      Modular.initialRoute,
      child: (context) => DashboardPage(),
      children: [
        ModuleRoute('/home', module: HomeModule()),
        ModuleRoute('/task', module: TaskModule()),
        ModuleRoute('/profile', module: ProfileModule()),
      ],
    );
  }
}
