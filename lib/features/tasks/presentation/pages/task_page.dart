import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task'),
      ),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            OutlinedButton(
              onPressed: () {
                Modular.to.navigate('/home/');
              },
              child: Text('Home'),
            ),
            OutlinedButton(
              onPressed: () {
                Modular.to.navigate('/profile/');
              },
              child: Text('Perfil'),
            ),
          ],
        ),
      ),
    );
  }
}
