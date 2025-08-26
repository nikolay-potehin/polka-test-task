import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:polka_test_task/blocs/cubit/masters_cubit.dart';
import 'package:polka_test_task/core/colors.dart';
import 'package:polka_test_task/widgets/dropdown_master_picker.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late final controller = MapController();

  @override
  void didChangeDependencies() {
    precacheImage(AssetImage('assets/images/master.png'), context);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondary,
        leadingWidth: 200,
        leading: Padding(
          padding: EdgeInsetsGeometry.fromLTRB(20, 8, 8, 8),
          child: DropdownMasterPicker(
            onValuePicked: (type) => context.read<MastersCubit>().setFilter(type),
          ),
        ),
      ),
      body: FlutterMap(
        mapController: controller,
        options: MapOptions(initialCenter: LatLng(55.751244, 37.618423)),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.polka_test_task',
          ),
          BlocBuilder<MastersCubit, MastersState>(
            builder: (context, state) => MarkerLayer(
              markers:
                  state.whenOrNull(
                    loaded: (masters) => masters.map((m) => m.toMarker()).toList(),
                  ) ??
                  [],
            ),
          ),
        ],
      ),
    );
  }
}
