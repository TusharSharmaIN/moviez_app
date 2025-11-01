import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moviez_app/presentation/router/route.dart';
import 'package:moviez_app/presentation/theme/base_colors.dart';
import 'package:moviez_app/presentation/theme/base_text_styles.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // context.read<SearchBloc>().add(const SearchEvent.init());
        context.push(AppRoutes.search);
      },
      child: Container(
        decoration: BoxDecoration(
          color: BaseColors.white.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          spacing: 6,
          children: [
            Icon(PhosphorIconsRegular.magnifyingGlass, size: 20),
            Text(
              'Search movies...',
              style: BaseTextStyles.mulishLargeSemiBold.copyWith(
                color: BaseColors.textGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
