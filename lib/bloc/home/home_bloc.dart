import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviez_app/domain/core/error/api_failures.dart';
import 'package:moviez_app/domain/home/entities/movies_data.dart';
import 'package:moviez_app/domain/home/repository/i_home_repository.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IHomeRepository homeRepository;

  HomeBloc({required this.homeRepository}) : super(HomeState.initial()) {
    on<HomeEvent>(_onEvent);
  }

  Future<void> _onEvent(HomeEvent event, Emitter<HomeState> emit) async {
    await event.map(
      init: (_) async => emit(HomeState.initial()),
      loadNowShowingMovies: (e) async {
        emit(
          state.copyWith(
            isLoadingNowShowingMovies: true,
            apiFailureOrSuccess: none(),
          ),
        );

        final result = await homeRepository.getNowShowingMovies();
        result.fold(
          (failure) {
            emit(
              state.copyWith(
                isLoadingNowShowingMovies: false,
                apiFailureOrSuccess: none(),
              ),
            );
          },
          (moviesData) {
            emit(
              state.copyWith(
                isLoadingNowShowingMovies: false,
                nowShowingMovies: moviesData,
              ),
            );
          },
        );
      },
      loadPopularMovies: (e) async {
        emit(
          state.copyWith(
            isLoadingPopularMovies: true,
            apiFailureOrSuccess: none(),
          ),
        );

        final result = await homeRepository.getPopularMovies();
        result.fold(
          (failure) {
            emit(
              state.copyWith(
                isLoadingPopularMovies: false,
                apiFailureOrSuccess: none(),
              ),
            );
          },
          (moviesData) {
            emit(
              state.copyWith(
                isLoadingPopularMovies: false,
                popularMovies: moviesData,
              ),
            );
          },
        );
      },
    );
  }
}
