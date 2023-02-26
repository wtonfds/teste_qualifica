import 'package:dartz/dartz.dart';
import 'package:mlearnbr_teste/src/core/errors/failure.dart';

import '../entities/specie_entity.dart';

abstract class GetSpecieByUrlUsecase {
  Future<Either<Failure, SpecieEntity>> call(String url);
}