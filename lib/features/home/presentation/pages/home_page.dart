import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:supertodolist/core/extensions/theme_extensions.dart';
import 'package:supertodolist/core/themes/app_space.dart';
import 'package:supertodolist/features/home/presentation/bloc/home_bloc.dart';
import 'package:supertodolist/features/home/presentation/widgets/home_app_bar_widget.dart';
import 'package:supertodolist/features/home/presentation/widgets/home_category_widget.dart';
import 'package:supertodolist/features/home/presentation/widgets/home_recent_widget.dart';
import 'package:supertodolist/features/home/presentation/widgets/home_search_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bloc = Modular.get<HomeBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBarWidget(),
      body: SizedBox.expand(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(
            horizontal: AppSpace.paddingH,
          ),
          child: Column(
            children: [
              HomeSearchBarWidget(),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    HomeCategoryWidget(),
                    SizedBox(
                      height: AppSpace.spacing,
                    ),
                    HomeRecentWidget(),
                    SizedBox(
                      height: AppSpace.spacing + 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
