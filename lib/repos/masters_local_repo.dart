import 'dart:convert';

import 'package:polka_test_task/data/masters.dart';
import 'package:polka_test_task/models/master.dart';
import 'package:polka_test_task/repos/masters_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MastersLocalRepo implements MastersRepo {
  MastersLocalRepo();

  final _prefs = SharedPreferencesAsync();

  @override
  Future<List<Master>> getMasters() async {
    final String? mastersString = await _prefs.getString('masters');
    if (mastersString is String) {
      final json = jsonDecode(mastersString);
      final masters = (json as List).map((json) => Master.fromJson(json)).toList();
      return masters;
    } else {
      // Local storage is empty, meaning this is the first launch of the app
      // So we put some mock data in local storage
      await _prefs.setString('masters', jsonEncode(mockMasters));
      return mockMasters;
    }
  }
}
