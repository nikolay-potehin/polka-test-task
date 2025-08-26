import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:polka_test_task/models/master.dart';
import 'package:polka_test_task/repos/masters_local_repo.dart';
import 'package:polka_test_task/repos/masters_repo.dart';

part 'masters_state.dart';
part 'masters_cubit.freezed.dart';

class MastersCubit extends Cubit<MastersState> {
  MastersCubit() : super(MastersState.initial());

  final MastersRepo repo = MastersLocalRepo();
  final List<Master> _masters = [];

  void load() async {
    emit(MastersState.loading());
    _masters.clear();
    _masters.addAll(await repo.getMasters());
    emit(MastersState.loaded(masters: _masters));
  }

  void setFilter(MasterType? filter) {
    // Only apply filter if masters are loaded
    state.whenOrNull(
      loaded: (masters) => emit(
        MastersState.loaded(
          masters: _masters.where((m) => m.type == filter || filter == null).toList(),
        ),
      ),
    );
  }
}
