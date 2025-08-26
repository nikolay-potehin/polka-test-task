part of 'masters_cubit.dart';

@freezed
class MastersState with _$MastersState {
  const factory MastersState.initial() = _Initial;
  const factory MastersState.loading() = _Loading;
  const factory MastersState.loaded({required List<Master> masters}) = _Loaded;
}
