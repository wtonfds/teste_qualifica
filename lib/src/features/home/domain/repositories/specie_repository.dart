import 'package:dartz/dartz.dart';
import 'package:mlearnbr_teste/src/core/errors/failure.dart';
import 'package:mlearnbr_teste/src/features/home/domain/entities/specie_entity.dart';

abstract class SpecieRepository {
  Future<Either<Failure, List<SpecieEntity>>> getEspecie();

  Future<Either<Failure, SpecieEntity>> getEspecieByUrl(String url);
}