import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mlearnbr_teste/src/features/home/domain/entities/character_entity.dart';
import 'package:mlearnbr_teste/src/features/home/domain/entities/specie_entity.dart';
import 'package:mlearnbr_teste/src/features/home/domain/usecases/get_all_characters_usecase.dart';
import 'package:mlearnbr_teste/src/features/home/domain/usecases/get_species_usecase.dart';

class CharacterController extends GetxController {
  final GetAllCharactersUsecase getAllCharactersUsecase;
  final GetSpeciesUsecase getSpecieUsecase;

  CharacterController(this.getAllCharactersUsecase, this.getSpecieUsecase);

  final _charactersList = <CharacterEntity>[].obs;
  List<CharacterEntity> get charactersList => _charactersList;
  set charactersList(List<CharacterEntity> value) =>
      _charactersList.value = value;

  final _specie = <SpecieEntity>[].obs;
  List<SpecieEntity> get specie => _specie;
  set specie(List<SpecieEntity> value) => _specie.value = value;

  final _currentPage = 1.obs;
  int get currentPage => _currentPage.value;
  set currentPage(int value) => _currentPage.value = value;

  Future<void> getAllCharacters(String page) async {
    final result = await getAllCharactersUsecase(page);
    result.fold((l) => ErrorDescription(l.toString()), (r) {
      for (var element in r) {
        charactersList.add(element);
      }
    });
  }

  Future<void> getSpecie() async {
    final result = await getSpecieUsecase.call();
    
    result.fold(
      (l) => ErrorDescription(l.toString()),
      (r) {
        for (var element in r) {
          specie.add(element);
          
        }
      },
    );
  }

  String getSpecificSpecie(String url) {
    String name = '';
    for (var e in specie) {
      if (e.url == url) {
        name = e.name!;
      }
    }
    return name;
  }

  nextPage() {
    currentPage = currentPage + 1;
    charactersList.clear();
    getAllCharacters(currentPage.toString());
  }

  previousPage() {
    currentPage = currentPage - 1;
    charactersList.clear();
    getAllCharacters(currentPage.toString());
  }
}
