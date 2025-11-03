import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moviez_app/presentation/theme/base_colors.dart';

abstract class BaseTextStyles {
  static TextStyle mulishTinyBold = GoogleFonts.mulish(
    textStyle: const TextStyle(
      fontSize: 8,
      fontWeight: FontWeight.w700,
      color: BaseColors.black,
    ),
  );

  static TextStyle mulishExtraSmallBold = GoogleFonts.mulish(
    textStyle: const TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w700,
      color: BaseColors.black,
    ),
  );

  static TextStyle mulishSmallRegular = GoogleFonts.mulish(
    textStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: BaseColors.black,
    ),
  );

  static TextStyle mulishSmallSemiBold = GoogleFonts.mulish(
    textStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: BaseColors.black,
    ),
  );

  static TextStyle mulishSmallBold = GoogleFonts.mulish(
    textStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: BaseColors.black,
    ),
  );

  // static TextStyle mulishSemiMediumSemiBold = GoogleFonts.mulish(
  //   textStyle: const TextStyle(
  //     fontSize: 13,
  //     fontWeight: FontWeight.w500,
  //     color: BaseColors.black,
  //   ),
  // );

  // static TextStyle mulishSemiMediumBold = GoogleFonts.mulish(
  //   textStyle: const TextStyle(
  //     fontSize: 13,
  //     fontWeight: FontWeight.w600,
  //     color: BaseColors.black,
  //   ),
  // );

  static TextStyle mulishMediumRegular = GoogleFonts.mulish(
    textStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: BaseColors.black,
    ),
  );

  static TextStyle mulishMediumSemiBold = GoogleFonts.mulish(
    textStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: BaseColors.black,
    ),
  );

  static TextStyle mulishMediumBold = GoogleFonts.mulish(
    textStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: BaseColors.black,
    ),
  );

  static TextStyle mulishLargeSemiBold = GoogleFonts.mulish(
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: BaseColors.black,
    ),
  );

  static TextStyle merriLargeBold = GoogleFonts.merriweather(
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: BaseColors.black,
    ),
  );

  static TextStyle merriExtraLargeBold = GoogleFonts.merriweather(
    textStyle: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: BaseColors.black,
    ),
  );

  // static TextStyle mulishHugeBold = GoogleFonts.mulish(
  //   textStyle: const TextStyle(
  //     fontSize: 20,
  //     fontWeight: FontWeight.w600,
  //     color: BaseColors.black,
  //   ),
  // );
}
