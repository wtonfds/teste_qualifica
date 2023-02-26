import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mlearnbr_teste/src/features/home/data/models/character_model.dart';
import 'package:mlearnbr_teste/src/features/home/domain/entities/specie_entity.dart';
import 'package:mlearnbr_teste/src/features/home/domain/usecases/get_specie_by_url_usecase.dart';
import 'package:mlearnbr_teste/src/features/home/domain/usecases/get_species_usecase.dart';

class CharacterDetailsController extends GetxController {
  final GetSpecieByUrlUsecase getSpecieUsecase;

  final CharacterModel args = Get.arguments;
  List<SpecieEntity> species = [];
  var name = ''.obs;
  var gender = ''.obs;
  var birthYear = ''.obs;
  var eyeColor = ''.obs;
  var hairColor = ''.obs;
  var height = ''.obs;
  var mass = ''.obs;
  var skinColor = ''.obs;
  var specie = ''.obs;

  CharacterDetailsController(this.getSpecieUsecase);

  @override
  void onInit() async {
    if(args.species!.isNotEmpty){
      await getSpecieByUrl();
    }
    
    name.value = args.name!;
    gender.value = args.gender!;
    birthYear.value = args.birthYear!;
    eyeColor.value = args.eyeColor!;
    hairColor.value = args.hairColor!;
    height.value = args.height!;
    mass.value = args.mass!;
    skinColor.value = args.skinColor!;
    specie.value = species.isNotEmpty ? species.first.name! : 'N/A';

    print(args.species![0]);
    super.onInit();
  }

  Future<void> getSpecieByUrl() async {
    
    final result = await getSpecieUsecase.call(args.species![0]);
    log(result.toString());
    result.fold((l) => ErrorDescription(l.toString()), (r){
      species.add(r);
      
    });
  }
  
}