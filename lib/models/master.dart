import 'package:flutter_map/flutter_map.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';
import 'package:polka_test_task/widgets/master_marker_widget.dart';

part 'master.freezed.dart';
part 'master.g.dart';

enum MasterType {
  manicure('Маникюр'),
  sugaring('Шугаринг'),
  eyebrows('Брови');

  const MasterType(this.name);
  final String name;
}

@freezed
abstract class Master with _$Master {
  const Master._();

  const factory Master({
    required double lat,
    required double long,
    required String name,
    required String description,
    required MasterType type,
  }) = _Master;

  LatLng get latlng => LatLng(lat, long);

  Marker toMarker() => Marker(point: latlng, child: MasterMarkerWidget(this));

  factory Master.fromJson(Map<String, Object?> json) => _$MasterFromJson(json);
}
