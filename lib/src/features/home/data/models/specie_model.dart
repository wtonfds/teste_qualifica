import 'dart:convert';

import 'package:mlearnbr_teste/src/features/home/domain/entities/specie_entity.dart';

class SpecieModel implements SpecieEntity {
  @override
  String? averageHeight;

  @override
  String? averageLifespan;

  @override
  String? classification;

  @override
  String? created;

  @override
  String? designation;

  @override
  String? edited;

  @override
  String? eyeColors;

  @override
  List? films;

  @override
  String? hairColors;

  @override
  String? homeworld;

  @override
  String? language;

  @override
  String? name;

  @override
  List? people;

  @override
  String? skinColors;

  @override
  String? url;
  SpecieModel({
    this.averageHeight,
    this.averageLifespan,
    this.classification,
    this.created,
    this.designation,
    this.edited,
    this.eyeColors,
    this.films,
    this.hairColors,
    this.homeworld,
    this.language,
    this.name,
    this.people,
    this.skinColors,
    this.url,
  });

  
  

  SpecieModel copyWith({
    String? averageHeight,
    String? averageLifespan,
    String? classification,
    String? created,
    String? designation,
    String? edited,
    String? eyeColors,
    List? films,
    String? hairColors,
    String? homeworld,
    String? language,
    String? name,
    List? people,
    String? skinColors,
    String? url,
  }) {
    return SpecieModel(
      averageHeight: averageHeight ?? this.averageHeight,
      averageLifespan: averageLifespan ?? this.averageLifespan,
      classification: classification ?? this.classification,
      created: created ?? this.created,
      designation: designation ?? this.designation,
      edited: edited ?? this.edited,
      eyeColors: eyeColors ?? this.eyeColors,
      films: films ?? this.films,
      hairColors: hairColors ?? this.hairColors,
      homeworld: homeworld ?? this.homeworld,
      language: language ?? this.language,
      name: name ?? this.name,
      people: people ?? this.people,
      skinColors: skinColors ?? this.skinColors,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'average_height': averageHeight,
      'average_lifespan': averageLifespan,
      'classification': classification,
      'created': created,
      'designation': designation,
      'edited': edited,
      'eye_colors': eyeColors,
      'films': films,
      'hair_colors': hairColors,
      'homeworld': homeworld,
      'language': language,
      'name': name,
      'people': people,
      'skin_colors': skinColors,
      'url': url,
    };
  }

  factory SpecieModel.fromMap(Map<String, dynamic> map) {
    return SpecieModel(
      averageHeight: map['average_height'] != null ? map['average_height'] as String : null,
      averageLifespan: map['average_lifespan'] != null ? map['average_lifespan'] as String : null,
      classification: map['classification'] != null ? map['classification'] as String : null,
      created: map['created'] != null ? map['created'] as String : null,
      designation: map['designation'] != null ? map['designation'] as String : null,
      edited: map['edited'] != null ? map['edited'] as String : null,
      eyeColors: map['eye_colors'] != null ? map['eye_colors'] as String : null,
      films: map['films'] != null ? List<dynamic>.from(map['films'] as List<dynamic>) : null,
      hairColors: map['hair_colors'] != null ? map['hair_colors'] as String : null,
      homeworld: map['homeworld'] != null ? map['homeworld'] as String : null,
      language: map['language'] != null ? map['language'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      people: map['people'] != null ? List<dynamic>.from(map['people'] as List<dynamic>) : null,
      skinColors: map['skin_colors'] != null ? map['skin_colors'] as String : null,
      url: map['url'] != null ? map['url'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SpecieModel.fromJson(String source) => SpecieModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SpecieModel(averageHeight: $averageHeight, averageLifespan: $averageLifespan, classification: $classification, created: $created, designation: $designation, edited: $edited, eyeColors: $eyeColors, films: $films, hairColors: $hairColors, homeworld: $homeworld, language: $language, name: $name, people: $people, skinColors: $skinColors, url: $url)';
  }

  @override
  bool operator ==(covariant SpecieModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.averageHeight == averageHeight &&
      other.averageLifespan == averageLifespan &&
      other.classification == classification &&
      other.created == created &&
      other.designation == designation &&
      other.edited == edited &&
      other.eyeColors == eyeColors &&
      other.films == films &&
      other.hairColors == hairColors &&
      other.homeworld == homeworld &&
      other.language == language &&
      other.name == name &&
      other.people == people &&
      other.skinColors == skinColors &&
      other.url == url;
  }

  @override
  int get hashCode {
    return averageHeight.hashCode ^
      averageLifespan.hashCode ^
      classification.hashCode ^
      created.hashCode ^
      designation.hashCode ^
      edited.hashCode ^
      eyeColors.hashCode ^
      films.hashCode ^
      hairColors.hashCode ^
      homeworld.hashCode ^
      language.hashCode ^
      name.hashCode ^
      people.hashCode ^
      skinColors.hashCode ^
      url.hashCode;
  }
}
