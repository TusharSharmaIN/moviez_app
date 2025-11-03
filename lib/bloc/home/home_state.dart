part of 'home_bloc.dart';

@freezed
abstract class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    required bool isLoadingNowShowingMovies,
    required bool isLoadingPopularMovies,
    required MoviesData nowShowingMovies,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
    isLoadingNowShowingMovies: false,
    isLoadingPopularMovies: false,
    nowShowingMovies: MoviesData.empty(),
    apiFailureOrSuccess: none(),
  );

  get moviesList => [];
}
