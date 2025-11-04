import 'package:flutter/material.dart';
import 'package:moviez_app/presentation/theme/base_colors.dart';
import 'package:moviez_app/presentation/theme/base_text_styles.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
           WidgetSpan(
            child: Icon(
              icon,
              size: 24,
              color: BaseColors.primaryBlack,
            ),
          ),
          const WidgetSpan(child: SizedBox(width: 16)),
          TextSpan(
            text: title,
            style: BaseTextStyles.merriExtraLargeBold.copyWith(
              color: BaseColors.primaryBlack,
            ),
          ),
        ],
      ),
    );
  }
}
