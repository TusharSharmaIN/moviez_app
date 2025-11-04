import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviez_app/bloc/home/home_bloc.dart';
import 'package:moviez_app/presentation/core/widgets/common/column_movie_tile.dart';
import 'package:moviez_app/presentation/core/widgets/common/row_movie_tile.dart';
import 'package:moviez_app/presentation/core/widgets/custom/custom_app_bar.dart';
import 'package:moviez_app/presentation/core/widgets/custom/section_heading.dart';
import 'package:moviez_app/presentation/search/search_box.dart';

import 'package:moviez_app/presentation/theme/base_colors.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

part 'widgets/trending_movies.dart';
part 'widgets/popular_movies.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    final homebloc = context.read<HomeBloc>();
    homebloc.add(const HomeEvent.loadNowShowingMovies());
    homebloc.add(const HomeEvent.loadPopularMovies());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BaseColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 4,
            children: [CustomAppBar.menuAppBar(), const _HomePageContent()],
          ),
        ),
      ),
    );
  }
}

class _HomePageContent extends StatelessWidget {
  const _HomePageContent();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 16,
        children: [SearchBox(), TrendingMovies(), PopularMovies()],
      ),
    );
  }
}
