import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:supertodolist/features/home/presentation/bloc/home_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bloc = Modular.get<HomeBloc>();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ColorTile("Primary", colors.primary, colors.onPrimary),
          ColorTile("Secondary", colors.secondary, colors.onSecondary),
          ColorTile("Tertiary", colors.tertiary, colors.onTertiary),
          ColorTile("Error", colors.error, colors.onError),
          ColorTile("Surface", colors.surface, colors.onSurface),
          ColorTile("SurfaceContainer", colors.surfaceContainer, colors.onSurface),
          ColorTile("Outline", colors.outline, colors.onSurface),
        ],
      ),
    );
  }
}

class ColorTile extends StatelessWidget {
  final String label;
  final Color color;
  final Color textColor;

  const ColorTile(this.label, this.color, this.textColor, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black12),
      ),
      child: Text(label, style: TextStyle(color: textColor, fontSize: 18)),
    );
  }
}