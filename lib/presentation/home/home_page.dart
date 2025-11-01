import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviez_app/bloc/home/home_bloc.dart';
import 'package:moviez_app/presentation/core/widgets/custom_app_bar.dart';
import 'package:moviez_app/presentation/core/widgets/custom_image_view.dart';
import 'package:moviez_app/presentation/search/search_box.dart';

import 'package:moviez_app/presentation/theme/base_colors.dart';
import 'package:moviez_app/presentation/theme/base_text_styles.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

part 'widgets/trending_movies.dart';
part 'widgets/popular_movies.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BaseColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 4,
            children: [CustomAppBar.menuAppBar(), _HomePageContent()],
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 16,
        children: [const SearchBox(), TrendingMovies(), PopularMovies()],
      ),
    );
  }
}
