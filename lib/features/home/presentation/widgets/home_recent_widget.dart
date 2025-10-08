import 'package:flutter/material.dart';
import 'package:supertodolist/core/extensions/size_extensions.dart';
import 'package:supertodolist/core/extensions/theme_extensions.dart';
import 'package:supertodolist/core/themes/app_space.dart';

class HomeRecentWidget extends StatelessWidget {
  const HomeRecentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppSpace.spacing,
      children: [
        Text(
          'Recentes',
          style: context.textScheme.titleMedium,
        ),
        ListView.separated(
          shrinkWrap: true,
          itemCount: 4,
          physics: NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) => SizedBox(height: 20),
          itemBuilder: (context, index) => Container(
            width: 220,
            height: 250,
            decoration: BoxDecoration(
              color: context.colorScheme.surfaceContainer,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),

        // SizedBox(
        //   width: context.screenWidth,
        //   height: 250,
        //   child: Column(
        //     children: [
        //       Expanded(
        //         child: ListView.separated(
        //           shrinkWrap: true,
        //           itemCount: 3,
        //           physics: NeverScrollableScrollPhysics(),
        //           separatorBuilder: (context, index) => SizedBox(height: 20),
        //           itemBuilder: (context, index) => Container(
        //             width: 220,
        //             height: 250,
        //             decoration: BoxDecoration(
        //               color: context.colorScheme.surfaceContainer,
        //               borderRadius: BorderRadius.circular(20),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
