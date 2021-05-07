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
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the Music type in your schema. */
@immutable
class Music extends Model {
  static const classType = const _MusicModelType();
  final String id;
  final String Title;
  final String Artist;
  final String Genre;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const Music._internal(
      {@required this.id, this.Title, this.Artist, this.Genre});

  factory Music({String id, String Title, String Artist, String Genre}) {
    return Music._internal(
        id: id == null ? UUID.getUUID() : id,
        Title: Title,
        Artist: Artist,
        Genre: Genre);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Music &&
        id == other.id &&
        Title == other.Title &&
        Artist == other.Artist &&
        Genre == other.Genre;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Music {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("Title=" + "$Title" + ", ");
    buffer.write("Artist=" + "$Artist" + ", ");
    buffer.write("Genre=" + "$Genre");
    buffer.write("}");

    return buffer.toString();
  }

  Music copyWith({String id, String Title, String Artist, String Genre}) {
    return Music(
        id: id ?? this.id,
        Title: Title ?? this.Title,
        Artist: Artist ?? this.Artist,
        Genre: Genre ?? this.Genre);
  }

  Music.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        Title = json['Title'],
        Artist = json['Artist'],
        Genre = json['Genre'];

  Map<String, dynamic> toJson() =>
      {'id': id, 'Title': Title, 'Artist': Artist, 'Genre': Genre};

  static final QueryField ID = QueryField(fieldName: "music.id");
  static final QueryField TITLE = QueryField(fieldName: "Title");
  static final QueryField ARTIST = QueryField(fieldName: "Artist");
  static final QueryField GENRE = QueryField(fieldName: "Genre");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Music";
    modelSchemaDefinition.pluralName = "Music";

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
        key: Music.TITLE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Music.ARTIST,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Music.GENRE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class _MusicModelType extends ModelType<Music> {
  const _MusicModelType();

  @override
  Music fromJson(Map<String, dynamic> jsonData) {
    return Music.fromJson(jsonData);
  }
}
