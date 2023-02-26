// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:mlearnbr_teste/src/features/home/domain/entities/character_entity.dart';

class CharacterModel implements CharacterEntity {
  @override
  String? birthYear;

  @override
  String? created;

  @override
  String? edited;

  @override
  String? eyeColor;

  @override
  List<dynamic>? films;

  @override
  String? gender;

  @override
  String? hairColor;

  @override
  String? height;

  @override
  String? homeworld;

  @override
  String? mass;

  @override
  String? name;

  @override
  String? skinColor;

  @override
  List<dynamic>? species;

  @override
  List<dynamic>? starships;

  @override
  String? url;

  @override
  List<dynamic>? vehicles;

  CharacterModel({
    this.birthYear,
    this.created,
    this.edited,
    this.eyeColor,
    this.films,
    this.gender,
    this.hairColor,
    this.height,
    this.homeworld,
    this.mass,
    this.name,
    this.skinColor,
    this.species,
    this.starships,
    this.url,
    this.vehicles,
  });

  

  CharacterModel copyWith({
    String? birthYear,
    String? created,
    String? edited,
    String? eyeColor,
    List<dynamic>? films,
    String? gender,
    String? hairColor,
    String? height,
    String? homeworld,
    String? mass,
    String? name,
    String? skinColor,
    List<dynamic>? species,
    List<dynamic>? starships,
    String? url,
    List<String>? vehicles,
  }) {
    return CharacterModel(
      birthYear: birthYear ?? this.birthYear,
      created: created ?? this.created,
      edited: edited ?? this.edited,
      eyeColor: eyeColor ?? this.eyeColor,
      films: films ?? this.films,
      gender: gender ?? this.gender,
      hairColor: hairColor ?? this.hairColor,
      height: height ?? this.height,
      homeworld: homeworld ?? this.homeworld,
      mass: mass ?? this.mass,
      name: name ?? this.name,
      skinColor: skinColor ?? this.skinColor,
      species: species ?? this.species,
      starships: starships ?? this.starships,
      url: url ?? this.url,
      vehicles: vehicles ?? this.vehicles,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'birth_year': birthYear,
      'created': created,
      'edited': edited,
      'eye_color': eyeColor,
      'films': films,
      'gender': gender,
      'hair_color': hairColor,
      'height': height,
      'homeworld': homeworld,
      'mass': mass,
      'name': name,
      'skin_color': skinColor,
      'species': species,
      'starships': starships,
      'url': url,
      'vehicles': vehicles,
    };
  }

  factory CharacterModel.fromMap(Map<String, dynamic> map) {
    return CharacterModel(
      birthYear: map['birth_year'] != null ? map['birth_year'] as String : null,
      created: map['created'] != null ? map['created'] as String : null,
      edited: map['edited'] != null ? map['edited'] as String : null,
      eyeColor: map['eye_color'] != null ? map['eye_color'] as String : null,
      films: map['films'] != null ? List<dynamic>.from((map['films'] as List<dynamic>)) : null,
      gender: map['gender'] != null ? map['gender'] as String : null,
      hairColor: map['hair_color'] != null ? map['hair_color'] as String : null,
      height: map['height'] != null ? map['height'] as String : null,
      homeworld: map['homeworld'] != null ? map['homeworld'] as String : null,
      mass: map['mass'] != null ? map['mass'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      skinColor: map['skin_color'] != null ? map['skin_color'] as String : null,
      species: map['species'] != null ? List<dynamic>.from((map['species'] as List<dynamic>)) : null,
      starships: map['starships'] != null ? List<dynamic>.from((map['starships'] as List<dynamic>)) : null,
      url: map['url'] != null ? map['url'] as String : null,
      vehicles: map['vehicles'] != null ? List<dynamic>.from((map['vehicles'] as List<dynamic>)) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CharacterModel.fromJson(String source) => CharacterModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CharacterModel(birth_year: $birthYear, created: $created, edited: $edited, eye_color: $eyeColor, films: $films, gender: $gender, hair_color: $hairColor, height: $height, homeworld: $homeworld, mass: $mass, name: $name, skin_color: $skinColor, species: $species, starships: $starships, url: $url, vehicles: $vehicles)';
  }

  @override
  bool operator ==(covariant CharacterModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.birthYear == birthYear &&
      other.created == created &&
      other.edited == edited &&
      other.eyeColor == eyeColor &&
      listEquals(other.films, films) &&
      other.gender == gender &&
      other.hairColor == hairColor &&
      other.height == height &&
      other.homeworld == homeworld &&
      other.mass == mass &&
      other.name == name &&
      other.skinColor == skinColor &&
      listEquals(other.species, species) &&
      listEquals(other.starships, starships) &&
      other.url == url &&
      listEquals(other.vehicles, vehicles);
  }

  @override
  int get hashCode {
    return birthYear.hashCode ^
      created.hashCode ^
      edited.hashCode ^
      eyeColor.hashCode ^
      films.hashCode ^
      gender.hashCode ^
      hairColor.hashCode ^
      height.hashCode ^
      homeworld.hashCode ^
      mass.hashCode ^
      name.hashCode ^
      skinColor.hashCode ^
      species.hashCode ^
      starships.hashCode ^
      url.hashCode ^
      vehicles.hashCode;
  }
}
