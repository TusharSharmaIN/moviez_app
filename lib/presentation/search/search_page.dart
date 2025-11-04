import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviez_app/bloc/search/search_bloc.dart';
import 'package:moviez_app/presentation/core/widgets/common/row_movie_tile.dart';
import 'package:moviez_app/presentation/core/widgets/custom/custom_app_bar.dart';
import 'package:moviez_app/presentation/search/search_field.dart';

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
            return RowMovieTile(movie: searchResult[index]);
          },
        );
      },
    );
  }
}
