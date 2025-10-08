import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:supertodolist/core/extensions/theme_extensions.dart';
import 'package:supertodolist/core/themes/app_icons.dart';

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
    '/notification/',
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
        highlightColor: Colors.transparent,
      ),
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () => _onItemTapped(0),
              icon: Icon(
                AppIcons.home,
                size: 30,
                color: _selectedIndex == 0
                    ? context.colorScheme.primary
                    : context.colorScheme.onSurface,
              ),
            ),
            IconButton(
              onPressed: () => _onItemTapped(1),
              icon: Icon(
                AppIcons.task,
                size: 30,
                color: _selectedIndex == 1
                    ? context.colorScheme.primary
                    : context.colorScheme.onSurface,
              ),
            ),
            SizedBox(
              width: 40,
            ),
            IconButton(
              onPressed: () => _onItemTapped(2),
              icon: Icon(
               AppIcons.notification,
                size: 30,
                color: _selectedIndex == 2
                    ? context.colorScheme.primary
                    : context.colorScheme.onSurface,
              ),
            ),
            IconButton(
              onPressed: () => _onItemTapped(3),
              icon: Icon(
               AppIcons.profile,
                size: 30,
                color: _selectedIndex == 3
                    ? context.colorScheme.primary
                    : context.colorScheme.onSurface,
              ),
            ),
          ],
        ),
        // child: BottomNavigationBar(
        //   onTap: _onItemTapped,
        //   currentIndex: _selectedIndex,
        //   unselectedItemColor: context.colorScheme.onSurface,
        //   type: BottomNavigationBarType.fixed,
        //   items: [
        //     BottomNavigationBarItem(
        //       label: '',
        //       icon: Icon(Icons.home_filled),
        //     ),
        //     BottomNavigationBarItem(
        //       label: '',
        //       icon: Icon(Icons.list_alt),
        //     ),
        //     BottomNavigationBarItem(
        //       label: '',
        //       icon: Icon(Icons.notification_important_sharp),
        //     ),
        //     BottomNavigationBarItem(
        //       label: '',
        //       icon: Icon(Icons.person),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
