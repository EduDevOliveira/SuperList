import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
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
                Modular.to.navigate('/task/');
              },
              child: Text('Task'),
            ),
          ],
        ),
      ),
    );
  }
}
