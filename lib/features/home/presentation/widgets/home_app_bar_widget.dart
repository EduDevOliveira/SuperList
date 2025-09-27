import 'package:flutter/material.dart';
import 'package:supertodolist/core/extensions/size_extensions.dart';
import 'package:supertodolist/core/extensions/theme_extensions.dart';

class HomeAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      height: context.percentHeight(100),
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Sab, 20 de Set',
                    style: context.textScheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Olá, Eduardo',
                    style: context.textScheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Image(
                  image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2015/12/08/18/19/clock-1083479_960_720.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.maxFinite, 110);
}
