import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:mlearnbr_teste/src/core/errors/failure.dart';
import 'package:mlearnbr_teste/src/core/network/network_config.dart';
import 'package:mlearnbr_teste/src/features/home/data/datasources/specie_datasource.dart';
import 'package:mlearnbr_teste/src/features/home/data/models/specie_model.dart';

class SpecieApi implements SpecieDatasource {
  @override
  Future<List<SpecieModel>> getSpecie() async {
    final Dio dio = Dio();
    var count = 1;
    List<SpecieModel> listSpecie = [];

    for (var page = 1; count < 5; page=page+1) {
      final response = await dio.get('${NetworkConfig.kBaseUrl}/species/?page=$page');
      
      if ((response.data['results'] as List).isNotEmpty) {
        final list = (response.data['results'] as List)
            .map((e) => SpecieModel.fromMap(e))
            .toList();
        
        listSpecie.addAll(list);
        count = count + 1;
      }else{
        count = 5;
      }
    }
    return listSpecie;
  }
  
  @override
  Future<SpecieModel> getSpecieByUrl(String url) async{
    final Dio dio = Dio();
    final response = await dio.get(url);
    if(response.statusCode == 200){
      final list = SpecieModel.fromMap(response.data);

      return list;
    }else{
      throw ServerFailure();
    }
  }
}
