import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:mlearnbr_teste/src/config/themes/app_colors.dart';
import 'package:mlearnbr_teste/src/config/themes/text_styles.dart';
import 'package:mlearnbr_teste/src/features/home/presentation/controllers/character_details_controller.dart';
import 'package:mlearnbr_teste/src/features/home/presentation/pages/widgets/customTable.dart';

class CharacterDetailsPage extends GetView<CharacterDetailsController> {
  const CharacterDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/background_space.jpg',
          color: Colors.white.withOpacity(0.6),
          colorBlendMode: BlendMode.modulate,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              'Detalhes do personagem',
              style: TextStyle(color: AppColors.primaryColor, fontSize: 18),
            ),
            centerTitle: true,
            leading: IconButton(
              onPressed: () => Get.back(),
              padding: const EdgeInsets.only(left: 10),
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: AppColors.primaryColor,
              ),
            ),
          ),
          body: Column(
            children: [
              Obx(
                () => SingleChildScrollView(
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),
                        Text(
                          controller.name.value,
                          style: context.textStyles.textPrimaryFontRegular
                              .copyWith(
                                  color: AppColors.primaryColor, fontSize: 22),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.white),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(18)),
                          ),
                          child: SingleChildScrollView(
                            child: CustomTable(
                              birthYear: controller.birthYear.value,
                              eyeColor: controller.eyeColor.value,
                              gender: controller.gender.value,
                              hairColor: controller.hairColor.value,
                              height: controller.height.value,
                              mass: controller.mass.value,
                              name: controller.name.value,
                              skinColor: controller.skinColor.value,
                              specie: controller.specie.value,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
