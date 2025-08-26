import 'package:polka_test_task/models/master.dart';

abstract class MastersRepo {
  Future<List<Master>> getMasters();
}
