import 'package:dio/dio.dart';
import 'package:mlearnbr_teste/src/features/home/data/datasources/specie_datasource.dart';
import 'package:mlearnbr_teste/src/features/home/data/models/specie_model.dart';
import 'package:mlearnbr_teste/src/features/home/domain/entities/specie_entity.dart';
import 'package:mlearnbr_teste/src/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:mlearnbr_teste/src/features/home/domain/repositories/specie_repository.dart';

class SpecieRepositoryimpl implements SpecieRepository {
  final SpecieDatasource datasource;

  SpecieRepositoryimpl(this.datasource);

  @override
  Future<Either<Failure, List<SpecieEntity>>> getEspecie() async{
    try {
      final response = await datasource.getSpecie();
      return Right(response);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
  
  @override
  Future<Either<Failure, SpecieEntity>> getEspecieByUrl(String url) async {
    try {
      final response = await datasource.getSpecieByUrl(url);
      return Right(response);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
  
  
}