import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:moviez_app/bloc/search/search_bloc.dart';
import 'package:moviez_app/domain/home/entities/movies_data.dart';
import 'package:moviez_app/presentation/core/widgets/custom/custom_app_bar.dart';
import 'package:moviez_app/presentation/core/widgets/custom/custom_image_view.dart';
import 'package:moviez_app/presentation/home/home_page.dart';
import 'package:moviez_app/presentation/router/route.dart';
import 'package:moviez_app/presentation/search/search_field.dart';
import 'package:moviez_app/presentation/theme/base_colors.dart';
import 'package:moviez_app/presentation/theme/base_text_styles.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  void initState() {
    super.initState();
    context.read<SearchBloc>().add(const SearchEvent.init());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomAppBar.backAppBar(),
            const Expanded(child: _SearchPageContent()),
          ],
        ),
      ),
    );
  }
}

class _SearchPageContent extends StatelessWidget {
  const _SearchPageContent();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 16,
        children: [
          SearchField(),
          Expanded(child: _SearchResults()),
        ],
      ),
    );
  }
}

class _SearchResults extends StatelessWidget {
  const _SearchResults();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      buildWhen: (previous, current) =>
          previous.searchResult != current.searchResult,
      builder: (context, state) {
        final searchResult = state.searchResult.movies;
        return ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: searchResult.length,
          itemBuilder: (context, index) {
            return _SearchTile(movie: searchResult[index]);
          },
        );
      },
    );
  }
}

class _SearchTile extends StatelessWidget {
  const _SearchTile({required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(
          AppRoutes.movieDetails,
          extra: {'movieId': movie.id.toString()},
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CustomImageView(
                height: 120,
                width: 80,
                fit: BoxFit.cover,
                imageUrl: movie.posterUrl,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  Text(
                    movie.title.getValue(),
                    style: BaseTextStyles.mulishMediumBold.copyWith(
                      color: BaseColors.black,
                    ),
                  ),
                  DateAndLanguage(
                    date: movie.releaseDate.formattedDate,
                    languageCode: movie.originalLanguage.getValue(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
