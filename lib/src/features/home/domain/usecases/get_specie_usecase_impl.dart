import 'package:mlearnbr_teste/src/features/home/domain/entities/specie_entity.dart';
import 'package:mlearnbr_teste/src/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:mlearnbr_teste/src/features/home/domain/repositories/specie_repository.dart';
import 'package:mlearnbr_teste/src/features/home/domain/usecases/get_species_usecase.dart';

class GetSpecieUsecaseImpl implements GetSpeciesUsecase {
  final SpecieRepository repository;

  GetSpecieUsecaseImpl(this.repository);

  @override
  Future<Either<Failure, List<SpecieEntity>>> call() {
    return repository.getEspecie();
  }
  
}