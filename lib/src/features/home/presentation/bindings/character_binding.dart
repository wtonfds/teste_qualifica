import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:mlearnbr_teste/src/features/home/data/datasources/character_datasource.dart';
import 'package:mlearnbr_teste/src/features/home/data/repositories/character_repository_impl.dart';
import 'package:mlearnbr_teste/src/features/home/data/repositories/specie_repository_impl.dart';
import 'package:mlearnbr_teste/src/features/home/domain/usecases/get_all_characters_usecase.dart';
import 'package:mlearnbr_teste/src/features/home/domain/usecases/get_all_characters_usecase_impl.dart';
import 'package:mlearnbr_teste/src/features/home/domain/usecases/get_specie_usecase_impl.dart';
import 'package:mlearnbr_teste/src/features/home/external/character_api.dart';
import 'package:mlearnbr_teste/src/features/home/external/specie_api.dart';
import 'package:mlearnbr_teste/src/features/home/presentation/controllers/character_controller.dart';

class CharacterBinding  extends Bindings {
  @override
  void dependencies() {
    final CharacterApi datasourceCharacter = CharacterApi();
    final CharacterRepositoryImpl characterRepository = CharacterRepositoryImpl(datasourceCharacter);
    final GetAllCharactersUsecaseImpl getAllCharactersUsecase = GetAllCharactersUsecaseImpl(characterRepository);

    final SpecieApi datasourceSpecie = SpecieApi();
    final SpecieRepositoryimpl specieRepositoryimpl = SpecieRepositoryimpl(datasourceSpecie);
    final GetSpecieUsecaseImpl getSpecieUsecase = GetSpecieUsecaseImpl(specieRepositoryimpl);

    Get.lazyPut(() => CharacterController(getAllCharactersUsecase, getSpecieUsecase));
  }
  
}