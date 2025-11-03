import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviez_app/bloc/movie_details/movie_details_bloc.dart';
import 'package:moviez_app/presentation/theme/base_colors.dart';
import 'package:moviez_app/presentation/theme/base_text_styles.dart';

class MovieTags extends StatelessWidget {
  const MovieTags({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
      buildWhen: (previous, current) =>
          previous.movieDetails != current.movieDetails,
      builder: (context, state) {
        final genere = state.movieDetails.genres;
        return SizedBox(
          height: 28,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: genere.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final genre = genere[index];
              return Container(
                margin: const EdgeInsets.only(right: 8),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: BaseColors.lightLilac,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Text(
                  genre.name.getValue(),
                  style: BaseTextStyles.mulishSmallBold.copyWith(
                    color: BaseColors.lilac,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
