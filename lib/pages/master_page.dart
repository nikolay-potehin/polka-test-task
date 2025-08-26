import 'package:flutter/material.dart';
import 'package:polka_test_task/core/colors.dart';
import 'package:polka_test_task/models/master.dart';

class MasterPage extends StatelessWidget {
  const MasterPage(this.master, {super.key});

  final Master master;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.secondary),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 20,
        children: [
          Image.asset('assets/images/master.png', fit: BoxFit.cover),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
            child: Text(master.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          ),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
            child: Text('${master.type.name} на дому'),
          ),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
            child: Text(master.description),
          ),
        ],
      ),
    );
  }
}
