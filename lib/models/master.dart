import 'package:freezed_annotation/freezed_annotation.dart';

part 'master.freezed.dart';
part 'master.g.dart';

enum MasterType {
  manicure('маникюр'),
  sugaring('шугаринг'),
  eyebrows('брови');

  const MasterType(this.name);
  final String name;
}

@freezed
abstract class Master with _$Master {
  const factory Master({
    required double lat,
    required double long,
    required String name,
    required String description,
    required MasterType type,
  }) = _Master;

  factory Master.fromJson(Map<String, Object?> json) => _$MasterFromJson(json);
}
