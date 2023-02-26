import 'package:get/get.dart';
import 'package:mlearnbr_teste/src/config/routes/app_routes.dart';
import 'package:mlearnbr_teste/src/features/home/presentation/bindings/character_binding.dart';
import 'package:mlearnbr_teste/src/features/home/presentation/bindings/character_detail_binding.dart';
import 'package:mlearnbr_teste/src/features/home/presentation/pages/character_detail.dart';
import 'package:mlearnbr_teste/src/features/home/presentation/pages/home_page.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => const HomePage(),
      bindings: [CharacterBinding()],
    ),
    GetPage(
      name: AppRoutes.CHAR_DETAIL,
      page: () => const CharacterDetailsPage(),
      bindings: [CharacterDetailBinding()],
    ),
  ];
}
