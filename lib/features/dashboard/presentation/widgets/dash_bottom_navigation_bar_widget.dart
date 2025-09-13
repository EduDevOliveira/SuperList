import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DashBottomNavigationBarWidget extends StatefulWidget {
  const DashBottomNavigationBarWidget({super.key});

  @override
  State<DashBottomNavigationBarWidget> createState() =>
      _DashBottomNavigationBarWidgetState();
}

class _DashBottomNavigationBarWidgetState extends State<DashBottomNavigationBarWidget> {
  int _selectedIndex = 0;

  final _routes = [
    '/home/',
    '/task/',
    '/profile/',
  ];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
    Modular.to.navigate(_routes[index]); // troca de rota
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashFactory: NoSplash.splashFactory,
      ),
      child: BottomNavigationBar(
        onTap: _onItemTapped,
        backgroundColor: Colors.blue,
        showSelectedLabels: false,
        selectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(
          size: 30,
        ),
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.task),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
