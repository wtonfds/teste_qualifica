import 'package:mlearnbr_teste/src/features/home/data/datasources/character_datasource.dart';
import 'package:mlearnbr_teste/src/features/home/data/models/character_model.dart';
import 'package:mlearnbr_teste/src/features/home/domain/entities/character_entity.dart';
import 'package:mlearnbr_teste/src/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:mlearnbr_teste/src/features/home/domain/repositories/character_repository.dart';

class CharacterRepositoryImpl implements CharacterRepository {
  final CharacterDatasource datasource;

  CharacterRepositoryImpl(this.datasource);

  @override
  Future<Either<Failure, List<CharacterEntity>>> getCharacters(String page) async{
    try {
      final List<CharacterModel> response = await datasource.getCharacters(page);
      return Right(response);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
  
}