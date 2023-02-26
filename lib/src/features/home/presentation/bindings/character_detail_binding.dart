import 'package:get/get.dart';
import 'package:mlearnbr_teste/src/features/home/data/repositories/specie_repository_impl.dart';
import 'package:mlearnbr_teste/src/features/home/domain/usecases/get_specie_by_url_usecase_impl.dart';
import 'package:mlearnbr_teste/src/features/home/domain/usecases/get_specie_usecase_impl.dart';
import 'package:mlearnbr_teste/src/features/home/external/specie_api.dart';

import '../controllers/character_details_controller.dart';

class CharacterDetailBinding extends Bindings {
  @override
  void dependencies() {
    final SpecieApi datasourceSpecie = SpecieApi();
    final SpecieRepositoryimpl repository = SpecieRepositoryimpl(datasourceSpecie);
    final GetSpecieByUrlUsecaseImpl usecase = GetSpecieByUrlUsecaseImpl(repository: repository);

    Get.put(CharacterDetailsController(usecase));
  }
  
}