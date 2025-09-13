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
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blue,
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        bloc: bloc,
        builder: (context, state) {
          return SingleChildScrollView(
            child: SizedBox(
              width: double.maxFinite,
              height: MediaQuery.sizeOf(context).height - 218,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    key: Key('count'),
                    state.value.toString(),
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),

                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      bloc.add(HomeEventIncrement());
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      bloc.add(HomeEventDecrement());
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
