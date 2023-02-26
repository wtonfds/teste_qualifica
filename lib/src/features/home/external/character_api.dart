import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mlearnbr_teste/src/core/errors/failure.dart';
import 'package:mlearnbr_teste/src/core/network/network_config.dart';
import 'package:mlearnbr_teste/src/features/home/data/datasources/character_datasource.dart';
import 'package:mlearnbr_teste/src/features/home/data/models/character_model.dart';

class CharacterApi implements CharacterDatasource {

  @override
  Future<List<CharacterModel>> getCharacters(String page) async {
    final Dio dio = Dio();

    final response = await dio.get('${NetworkConfig.kBaseUrl}/people/?page=$page');

    if(response.statusCode == 200){
      final list = (response.data['results'] as List).map((e) => CharacterModel.fromMap(e)).toList();

      return list;
    }else{
      throw ServerFailure();
    }
  }
  
}