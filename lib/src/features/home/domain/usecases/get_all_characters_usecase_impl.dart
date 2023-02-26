// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:mlearnbr_teste/src/core/errors/failure.dart';
import 'package:mlearnbr_teste/src/features/home/domain/entities/character_entity.dart';
import 'package:mlearnbr_teste/src/features/home/domain/repositories/character_repository.dart';
import 'package:mlearnbr_teste/src/features/home/domain/usecases/get_all_characters_usecase.dart';

class GetAllCharactersUsecaseImpl implements GetAllCharactersUsecase {
  final CharacterRepository repository;

  GetAllCharactersUsecaseImpl(
    this.repository,
  );

  @override
  Future<Either<Failure, List<CharacterEntity>>> call(String page) {
    return repository.getCharacters(page);
  }
  
}
