import 'package:flutter/material.dart';
import 'package:supertodolist/core/extensions/date_time_formatted_extensions.dart';
import 'package:supertodolist/core/extensions/date_time_week_day_extensions.dart';
import 'package:supertodolist/core/extensions/size_extensions.dart';
import 'package:supertodolist/core/extensions/theme_extensions.dart';
import 'package:supertodolist/core/themes/app_image.dart';
import 'package:intl/intl.dart';

class HomeAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      height: context.percentHeight(100),
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(bottom: 12),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: context.colorScheme.outline,
                width: 2,
              ),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 10,
            children: [
              SizedBox(width: 30),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.formattedDate,
                      style: context.textScheme.titleSmall,
                    ),
                    Text(
                      toBeginningOfSentenceCase(context.weekDay)!,
                      style: context.textScheme.titleSmall,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Image(
                  image: const AssetImage(AppImage.sunCloud),
                  height: context.percentHeight(20),
                  width: context.percentWidth(20),
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.maxFinite, 120);
}
