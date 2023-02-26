// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:mlearnbr_teste/src/core/errors/failure.dart';
import 'package:mlearnbr_teste/src/features/home/domain/entities/specie_entity.dart';
import 'package:mlearnbr_teste/src/features/home/domain/repositories/specie_repository.dart';
import 'package:mlearnbr_teste/src/features/home/domain/usecases/get_specie_by_url_usecase.dart';

class GetSpecieByUrlUsecaseImpl implements GetSpecieByUrlUsecase {
  final SpecieRepository repository;


  GetSpecieByUrlUsecaseImpl({
    required this.repository,
  });


  @override
  Future<Either<Failure, SpecieEntity>> call(String url) {
    return repository.getEspecieByUrl(url);
  }
  
}
