part of 'home_bloc.dart';

@freezed
abstract class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState() = _HomeState;

  factory HomeState.initial() => HomeState(
  );
}