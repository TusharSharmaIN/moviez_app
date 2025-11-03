import 'package:dartz/dartz.dart';
import 'package:moviez_app/config.dart';
import 'package:moviez_app/domain/core/error/api_failures.dart';
import 'package:moviez_app/domain/core/error/failure_handler.dart';
import 'package:moviez_app/domain/home/entities/movies_data.dart';
import 'package:moviez_app/domain/home/repository/i_home_repository.dart';
import 'package:moviez_app/infrastructure/home/datasource/home_remote.dart';

class HomeRepository implements IHomeRepository {
  final Config config;
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepository({required this.config, required this.homeRemoteDataSource});

  @override
  Future<Either<ApiFailure, MoviesData>> getNowShowingMovies() async {
    try {
      final result = await homeRemoteDataSource.getNowShowingMovies();
      return Right(result);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
