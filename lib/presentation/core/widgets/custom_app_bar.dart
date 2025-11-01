import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moviez_app/presentation/theme/base_text_styles.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:moviez_app/presentation/theme/base_colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.title, this.padding});
  final Widget? title;
  final EdgeInsets? padding;

  factory CustomAppBar.menuAppBar() => CustomAppBar(title: AppTitle());

  factory CustomAppBar.backAppBar({EdgeInsets? padding}) =>
      CustomAppBar(padding: padding);

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
          ],
        ),
      );
    }
    return Align(
      alignment: Alignment.centerLeft,
      child: AppBarBackCTA(
        padding:
            padding ??
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
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
        icon: Icon(PhosphorIconsRegular.list, size: 28, weight: 8),
      ),
    );
  }
}

class AppBarBackCTA extends StatelessWidget {
  const AppBarBackCTA({super.key, required this.padding, this.onPressed});
  final EdgeInsets padding;
  final VoidCallback? onPressed;

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
      child: IconButton(
        onPressed: () => _onPressed(context),
        icon: Icon(PhosphorIconsRegular.arrowLeft, size: 28),
        constraints: const BoxConstraints(),
      ),
    );
  }
}
