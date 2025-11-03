import 'package:dartz/dartz.dart';
import 'package:moviez_app/domain/core/error/api_failures.dart';
import 'package:moviez_app/domain/home/entities/movies_data.dart';

abstract class IHomeRepository {
  Future<Either<ApiFailure, MoviesData>> getNowShowingMovies();
}
