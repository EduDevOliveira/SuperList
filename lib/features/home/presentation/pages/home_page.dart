import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:supertodolist/features/app/presentation/bloc/app_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final settingBloc = Modular.get<AppBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      appBar: AppBar(title: const Text('Home')),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            OutlinedButton(
              onPressed: () {
                settingBloc.add(ChangedTheme());
              },
              child: Text('Trocar'),
            ),
          ],
        ),
      ),
    );
  }
}
