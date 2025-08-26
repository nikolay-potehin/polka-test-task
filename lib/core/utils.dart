import 'package:flutter/material.dart';

extension NavigationExt on BuildContext {
  Future<T?> push<T extends Object?>(Widget page) =>
      Navigator.of(this).push(MaterialPageRoute(builder: (_) => page));
}
