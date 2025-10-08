import 'package:flutter/material.dart';
import 'package:supertodolist/core/extensions/theme_extensions.dart';
import 'package:supertodolist/core/themes/app_space.dart';

class HomeSearchBarWidget extends StatelessWidget {
  const HomeSearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpace.paddingV),
      child: Row(
        spacing: AppSpace.spacing,
        children: [
          Expanded(
            child: SearchAnchor.bar(
              barElevation: WidgetStatePropertyAll(0),
              barBackgroundColor: WidgetStatePropertyAll(
                context.colorScheme.surfaceContainer,
              ),
              suggestionsBuilder: (context, controller) {
                return [
                  ListTile(
                    title: Text('Teste'),
                  ),
                ];
              },
            ),
          ),
          Icon(
            Icons.filter_list,
            size: 30,
          ),
        ],
      ),
    );
  }
}
