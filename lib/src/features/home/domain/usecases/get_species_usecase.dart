import 'package:dartz/dartz.dart';
import 'package:mlearnbr_teste/src/core/errors/failure.dart';
import 'package:mlearnbr_teste/src/features/home/domain/entities/specie_entity.dart';

abstract class GetSpeciesUsecase {
  Future<Either<Failure, List<SpecieEntity>>> call();
}