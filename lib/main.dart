import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polka_test_task/blocs/cubit/masters_cubit.dart';
import 'package:polka_test_task/pages/map_page.dart';

void main() async {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MastersCubit()..load(),
      child: const MaterialApp(home: MapPage()),
    );
  }
}
