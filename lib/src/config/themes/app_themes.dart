import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mlearnbr_teste/src/config/themes/app_colors.dart';
import 'package:mlearnbr_teste/src/config/themes/text_styles.dart';

class AppTheme {
  static ThemeData get defaultTheme {
    final ThemeData base = ThemeData.light();

    return ThemeData(
      unselectedWidgetColor: AppColors.primaryColor,

      appBarTheme: AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: AppColors.darkColor,
        titleTextStyle: TextStyles.i.textPrimaryFontBold
            .copyWith(color: Colors.black, fontSize: 18),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      //fontFamily: GoogleFonts.montserrat().fontFamily,
      dataTableTheme: DataTableThemeData(
        dataTextStyle: TextStyles.i.textPrimaryFontRegular
            .copyWith(color: AppColors.primaryColor, fontSize: 12),
        headingTextStyle: TextStyles.i.textPrimaryFontRegular
            .copyWith(color: AppColors.primaryColor, fontSize: 12),
      ),
      colorScheme: base.colorScheme
          .copyWith(
            primary: AppColors.primaryColor,
            secondary: AppColors.secondaryColor,
          )
          .copyWith(secondary: AppColors.primaryColor),
    );
  }
}
