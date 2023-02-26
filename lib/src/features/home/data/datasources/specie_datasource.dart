import 'package:mlearnbr_teste/src/features/home/data/models/specie_model.dart';

abstract class SpecieDatasource {
  Future<List<SpecieModel>> getSpecie();

  Future<SpecieModel> getSpecieByUrl(String url);
}