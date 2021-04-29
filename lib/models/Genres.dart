/*
* Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// ignore_for_file: public_member_api_docs

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the Genres type in your schema. */
@immutable
class Genres extends Model {
  static const classType = const _GenresModelType();
  final String id;
  List<String> GenreList;
  final String Genre;


  void addGenre(String genreString){
    try {
      GenreList.add(genreString);
    }
    catch(e){
      print(e);
    }
  }


  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

   Genres._internal({@required this.id, this.GenreList, this.Genre});

  factory Genres({String id, List<String> GenreList, String Genre}) {
    return Genres._internal(
        id: id == null ? UUID.getUUID() : id,
        GenreList: GenreList = new List<String>(),
        Genre: Genre);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Genres &&
        id == other.id &&
        DeepCollectionEquality().equals(GenreList, other.GenreList) &&
        Genre == other.Genre;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Genres {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("GenreList=" +
        (GenreList != null ? GenreList.toString() : "null") +
        ", ");
    buffer.write("Genre=" + "$Genre");
    buffer.write("}");

    return buffer.toString();
  }

  Genres copyWith({String id, List<String> GenreList, String Genre}) {
    return Genres(
        id: id ?? this.id,
        GenreList: GenreList ?? this.GenreList,
        Genre: Genre ?? this.Genre);
  }

  Genres.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        GenreList = json['GenreList']?.cast<String>(),
        Genre = json['Genre'];

  Map<String, dynamic> toJson() =>
      {'id': id, 'GenreList': GenreList, 'Genre': Genre};

  static final QueryField ID = QueryField(fieldName: "genres.id");
  static final QueryField GENRELIST = QueryField(fieldName: "GenreList");
  static final QueryField GENRE = QueryField(fieldName: "Genre");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Genres";
    modelSchemaDefinition.pluralName = "Genres";

    modelSchemaDefinition.authRules = [
      AuthRule(authStrategy: AuthStrategy.PRIVATE, operations: [
        ModelOperation.CREATE,
        ModelOperation.UPDATE,
        ModelOperation.DELETE,
        ModelOperation.READ
      ])
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Genres.GENRELIST,
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.string))));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Genres.GENRE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class _GenresModelType extends ModelType<Genres> {
  const _GenresModelType();

  @override
  Genres fromJson(Map<String, dynamic> jsonData) {
    return Genres.fromJson(jsonData);
  }
}
