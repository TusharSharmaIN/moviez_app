import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moviez_app/presentation/core/widgets/custom/custom_icon_button.dart';
import 'package:moviez_app/presentation/router/route.dart';
import 'package:moviez_app/presentation/theme/base_text_styles.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:moviez_app/presentation/theme/base_colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.padding,
    this.trailing,
    this.iconColor,
  });
  final Widget? title;
  final EdgeInsets? padding;
  final Widget? trailing;
  final Color? iconColor;

  factory CustomAppBar.menuAppBar() => const CustomAppBar(title: AppTitle());

  factory CustomAppBar.backAppBar({EdgeInsets? padding}) =>
      CustomAppBar(padding: padding);

  factory CustomAppBar.backAppBarWithTrailing({
    EdgeInsets? padding,
    Widget? trailing,
    Color? iconColor,
  }) =>
      CustomAppBar(padding: padding, trailing: trailing, iconColor: iconColor);

  @override
  Widget build(BuildContext context) {
    if (title != null) {
      return Container(
        color: BaseColors.white,
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: AppBarMenuCTA(),
            ),
            Center(child: title),
            const Align(
              alignment: Alignment.centerRight,
              child: AppBarWatchlistCTA(),
            ),
          ],
        ),
      );
    }

    if (trailing != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppBarBackCTA(
            padding:
                padding ??
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
            iconColor: iconColor,
          ),
          trailing!,
        ],
      );
    }

    return Align(
      alignment: Alignment.centerLeft,
      child: AppBarBackCTA(
        padding:
            padding ??
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
        iconColor: iconColor,
      ),
    );
  }
}

class AppTitle extends StatelessWidget {
  const AppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Moviez App',
      style: BaseTextStyles.merriLargeBold.copyWith(color: BaseColors.black),
    );
  }
}

class AppBarMenuCTA extends StatelessWidget {
  const AppBarMenuCTA({
    super.key,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
    this.onPressed,
  });
  final EdgeInsets padding;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: IconButton(
        onPressed: onPressed,
        icon: const Icon(PhosphorIconsRegular.list, size: 32, weight: 16),
      ),
    );
  }
}

class AppBarBackCTA extends StatelessWidget {
  const AppBarBackCTA({
    super.key,
    required this.padding,
    this.onPressed,
    this.iconColor = BaseColors.black,
  });
  final EdgeInsets padding;
  final VoidCallback? onPressed;
  final Color? iconColor;

  void _onPressed(BuildContext context) {
    if (onPressed != null) {
      onPressed!();
    } else {
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: CustomIconButton(
        onPressed: () => _onPressed(context),
        icon: Icon(PhosphorIconsRegular.arrowLeft, size: 28, color: iconColor),
      ),
    );
  }
}

class AppBarWatchlistCTA extends StatelessWidget {
  const AppBarWatchlistCTA({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: IconButton(
        onPressed: () => context.push(AppRoutes.watchlist),
        icon: const Icon(PhosphorIconsRegular.bookmarkSimple, size: 28),
        constraints: const BoxConstraints(),
      ),
    );
  }
}
