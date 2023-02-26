import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mlearnbr_teste/src/config/themes/app_colors.dart';
import 'package:mlearnbr_teste/src/config/themes/text_styles.dart';

class CustomGrid extends StatelessWidget {
  final String? nome;
  final String? idade;
  final String? especie;

  const CustomGrid({super.key, this.nome, this.idade, this.especie});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 1),
              child: Text(
                'Nome: ',
                style: context.textStyles.textPrimaryFontRegular.copyWith(
                  color: AppColors.primaryColor,
                  fontSize: 13,
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  nome!,
                  style: context.textStyles.textPrimaryFontMedium.copyWith(
                    color: AppColors.secondaryColor,
                    fontSize: 11,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Idade:',
                style: context.textStyles.textPrimaryFontRegular.copyWith(
                  color: AppColors.primaryColor,
                  fontSize: 13,
                  
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                idade!,
                style: context.textStyles.textPrimaryFontMedium.copyWith(
                  color: AppColors.secondaryColor,
                  fontSize: 11,
                  
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Espécie:',
                style: context.textStyles.textPrimaryFontRegular.copyWith(
                  color: AppColors.primaryColor,
                  fontSize: 13,
                  
                ),
              ),
            ),
            Flexible(
              child: Text(
                especie!,
                style: context.textStyles.textPrimaryFontMedium.copyWith(
                  color: AppColors.secondaryColor,
                  fontSize: 11,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
