import 'package:mlearnbr_teste/src/features/home/data/models/character_model.dart';

abstract class CharacterDatasource {
  Future<List<CharacterModel>> getCharacters(String page);
}