import 'package:flutter/material.dart';
import 'package:polka_test_task/core/colors.dart';
import 'package:polka_test_task/core/utils.dart';
import 'package:polka_test_task/models/master.dart';
import 'package:polka_test_task/pages/master_page.dart';

class MasterMarkerWidget extends StatelessWidget {
  const MasterMarkerWidget(this.master, {super.key});

  final Master master;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(MasterPage(master)),
      child: Icon(Icons.location_on_rounded, color: AppColors.primary, size: 40),
    );
  }
}
