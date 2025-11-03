part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.init() = _Init;
  const factory HomeEvent.loadNowShowingMovies() = _LoadNowShowingMovies;
  const factory HomeEvent.loadPopularMovies() = _LoadPopularMovies;
}
