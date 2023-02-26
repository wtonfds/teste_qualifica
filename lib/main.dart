import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mlearnbr_teste/src/config/routes/app_pages.dart';
import 'package:mlearnbr_teste/src/config/themes/app_themes.dart';
import 'package:mlearnbr_teste/src/features/home/presentation/bindings/character_binding.dart';

import 'src/config/routes/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  CharacterBinding().dependencies();

  runApp(const AppMLearnBr());
}

class AppMLearnBr extends StatelessWidget {
  const AppMLearnBr({super.key});

  @override
  Widget build(BuildContext context) {
    
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppMLearnBr',
      theme: AppTheme.defaultTheme,
      getPages: AppPages.pages,
      initialBinding: CharacterBinding(),
      initialRoute: AppRoutes.HOME,
    );
  }
}