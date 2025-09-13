import 'package:flutter_modular/flutter_modular.dart';
import 'package:supertodolist/features/tasks/presentation/pages/task_page.dart';

class TaskModule extends Module {
  @override
  void routes(r) {
    r.child(
      Modular.initialRoute,
      child: (context) => TaskPage(),
    );
  }
}
