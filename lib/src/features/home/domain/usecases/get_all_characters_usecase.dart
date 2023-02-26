import 'package:dartz/dartz.dart';
import 'package:mlearnbr_teste/src/core/errors/failure.dart';
import 'package:mlearnbr_teste/src/features/home/domain/entities/character_entity.dart';

abstract class GetAllCharactersUsecase {
  Future<Either<Failure, List<CharacterEntity>>> call(String page);
}