import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mlearnbr_teste/src/config/themes/app_colors.dart';
import 'package:mlearnbr_teste/src/config/themes/text_styles.dart';
import 'package:mlearnbr_teste/src/features/home/presentation/controllers/character_controller.dart';
import 'package:mlearnbr_teste/src/features/home/presentation/controllers/character_details_controller.dart';
import 'package:mlearnbr_teste/src/features/home/presentation/pages/character_detail.dart';
import 'package:mlearnbr_teste/src/features/home/presentation/pages/widgets/custom_grid.dart';

class HomePage extends GetView<CharacterController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    controller.getAllCharacters(controller.currentPage.toString());
    controller.getSpecie();
    return Obx(
      () {
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
                title: const Text('Star Wars'),
                centerTitle: false,
                backgroundColor: AppColors.primaryColor,
                actions: [
                  controller.currentPage != 1
                      ? TextButton(
                          onPressed: () {
                            controller.previousPage();
                          },
                          child: Text(
                            'anterior',
                            style: context.textStyles.textPrimaryFontRegular
                                .copyWith(
                              color: AppColors.darkColor,
                              fontSize: 11,
                            ),
                          ),
                        )
                      : Container(),
                  controller.currentPage < controller.charactersList.length ? TextButton(
                    onPressed: () {
                      controller.nextPage();
                    },
                    child: Text(
                      'próximo',
                      style: context.textStyles.textPrimaryFontRegular.copyWith(
                        color: AppColors.darkColor,
                        fontSize: 11,
                      ),
                    ),
                  ) : Container(),
                ],
              ),
              body: controller.charactersList.isNotEmpty
                  ? Container(
                      color: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 180,
                            childAspectRatio: 3 / 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                          ),
                          itemCount: controller.charactersList.length,
                          itemBuilder: (BuildContext ctx, index) {
                            return GestureDetector(
                              onTap: () => Get.toNamed(
                                '/char_detail',
                                arguments: controller.charactersList[index],
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppColors.primaryColor,
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: SingleChildScrollView(
                                  physics: const NeverScrollableScrollPhysics(),
                                  child: Obx(
                                    () {
                                      return CustomGrid(
                                        nome: controller
                                            .charactersList[index].name,
                                        idade: controller
                                            .charactersList[index].birthYear,
                                        especie: controller
                                                .charactersList[index]
                                                .species!
                                                .isNotEmpty
                                            ? controller.getSpecificSpecie(
                                                controller.charactersList[index]
                                                    .species![0]
                                                    .toString())
                                            : 'unknown',
                                      );
                                    },
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  : const Center(
                      child: CircularProgressIndicator(),
                    ),
            ),
          ],
        );
      },
    );
  }
}
