import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:moviez_app/domain/core/error/api_failures.dart';
import 'package:moviez_app/domain/core/error/failure_handler.dart';
import 'package:moviez_app/domain/home/entities/movies_data.dart';
import 'package:moviez_app/domain/home/repository/i_home_repository.dart';
import 'package:moviez_app/infrastructure/home/datasource/home_local.dart';
import 'package:moviez_app/infrastructure/home/datasource/home_remote.dart';
import 'package:moviez_app/infrastructure/home/dtos/movies_data_dto.dart';

class HomeRepository implements IHomeRepository {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepository({
    required this.homeRemoteDataSource,
    required this.homeLocalDataSource,
  });

  @override
  Future<Either<ApiFailure, MoviesData>> getNowShowingMovies() async {
    try {
      final result = await homeRemoteDataSource.getNowShowingMovies();
      final dtoList = result.results
          .map((e) => MovieDto.fromDomain(e))
          .toList();
      await homeLocalDataSource.cacheNowShowingMovies(dtoList);
      return Right(result);
    } on SocketException {
      final cached = await homeLocalDataSource.getCachedNowShowingMovies();
      if (cached.isNotEmpty) {
        final movies = cached.map((dto) => dto.toDomain()).toList();
        return Right(MoviesData(results: movies));
      }
      return const Left(ApiFailure.networkError());
    } catch (e) {
      final cached = await homeLocalDataSource.getCachedNowShowingMovies();
      if (cached.isNotEmpty) {
        final movies = cached.map((dto) => dto.toDomain()).toList();
        return Right(MoviesData(results: movies));
      }
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, MoviesData>> getPopularMovies() async {
    try {
      final result = await homeRemoteDataSource.getPopularMovies();
      final dtoList = result.results
          .map((e) => MovieDto.fromDomain(e))
          .toList();
      await homeLocalDataSource.cachePopularMovies(dtoList);
      return Right(result);
    } on SocketException {
      final cached = await homeLocalDataSource.getCachedPopularMovies();
      if (cached.isNotEmpty) {
        final movies = cached.map((dto) => dto.toDomain()).toList();
        return Right(MoviesData(results: movies));
      }
      return const Left(ApiFailure.networkError());
    } catch (e) {
      final cached = await homeLocalDataSource.getCachedPopularMovies();
      if (cached.isNotEmpty) {
        final movies = cached.map((dto) => dto.toDomain()).toList();
        return Right(MoviesData(results: movies));
      }
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
