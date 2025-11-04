import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviez_app/bloc/home/home_bloc.dart';
import 'package:moviez_app/bloc/movie_details/movie_details_bloc.dart';
import 'package:moviez_app/presentation/core/widgets/common/row_movie_tile.dart';
import 'package:moviez_app/presentation/core/widgets/custom/custom_app_bar.dart';
import 'package:moviez_app/presentation/core/widgets/custom/section_heading.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

part 'widgets/watchlisted_movies.dart';

class WatchlistPage extends StatefulWidget {
  const WatchlistPage({super.key});

  @override
  State<WatchlistPage> createState() => _WatchlistPageState();
}

class _WatchlistPageState extends State<WatchlistPage> {
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(const HomeEvent.loadWatchlistedMovies());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          spacing: 16,
          children: [CustomAppBar.backAppBar(), const _WatchlistPageContent()],
        ),
      ),
    );
  }
}

class _WatchlistPageContent extends StatelessWidget {
  const _WatchlistPageContent();

  @override
  Widget build(BuildContext context) {
    return BlocListener<MovieDetailsBloc, MovieDetailsState>(
      listenWhen: (previous, current) =>
          previous.isWatchlisted != current.isWatchlisted,
      listener: (context, state) {
        context.read<HomeBloc>().add(const HomeEvent.loadWatchlistedMovies());
      },
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [WatchlistedMovies()],
        ),
      ),
    );
  }
}
