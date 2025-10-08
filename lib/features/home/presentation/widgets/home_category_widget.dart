import 'package:flutter/material.dart';
import 'package:supertodolist/core/extensions/size_extensions.dart';
import 'package:supertodolist/core/extensions/theme_extensions.dart';
import 'package:supertodolist/core/themes/app_space.dart';

class HomeCategoryWidget extends StatelessWidget {
  const HomeCategoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppSpace.spacing,
      children: [
        Text(
          'Categoria',
          style: context.textScheme.titleMedium,
        ),
        SizedBox(
          width: context.screenWidth,
          height: 250,
          child: Row(
            children: [
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  separatorBuilder: (context, index) => SizedBox(width: 20),
                  itemBuilder: (context, index) => Container(
                    width: 220,
                    decoration: BoxDecoration(
                      color: context.colorScheme.surfaceContainer,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
