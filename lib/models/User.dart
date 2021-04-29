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

/** This is an auto generated class representing the User type in your schema. */
@immutable
class User extends Model {
  static const classType = const _UserModelType();
  final String id;
  final String Username;
  final String Email;
  final List<String> Genres;
  final String ArtistType;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const User._internal(
      {@required this.id,
      this.Username,
      this.Email,
      this.Genres,
      this.ArtistType});

  factory User(
      {String id,
      String Username,
      String Email,
      List<String> Genres,
      String ArtistType}) {
    return User._internal(
        id: id == null ? UUID.getUUID() : id,
        Username: Username,
        Email: Email,
        Genres: Genres != null ? List.unmodifiable(Genres) : Genres,
        ArtistType: ArtistType);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        id == other.id &&
        Username == other.Username &&
        Email == other.Email &&
        DeepCollectionEquality().equals(Genres, other.Genres) &&
        ArtistType == other.ArtistType;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("User {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("Username=" + "$Username" + ", ");
    buffer.write("Email=" + "$Email" + ", ");
    buffer.write(
        "Genres=" + (Genres != null ? Genres.toString() : "null") + ", ");
    buffer.write("ArtistType=" + "$ArtistType");
    buffer.write("}");

    return buffer.toString();
  }

  User copyWith(
      {String id,
      String Username,
      String Email,
      List<String> Genres,
      String ArtistType}) {
    return User(
        id: id ?? this.id,
        Username: Username ?? this.Username,
        Email: Email ?? this.Email,
        Genres: Genres ?? this.Genres,
        ArtistType: ArtistType ?? this.ArtistType);
  }

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        Username = json['Username'],
        Email = json['Email'],
        Genres = json['Genres']?.cast<String>(),
        ArtistType = json['ArtistType'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'Username': Username,
        'Email': Email,
        'Genres': Genres,
        'ArtistType': ArtistType
      };

  static final QueryField ID = QueryField(fieldName: "user.id");
  static final QueryField USERNAME = QueryField(fieldName: "Username");
  static final QueryField EMAIL = QueryField(fieldName: "Email");
  static final QueryField GENRES = QueryField(fieldName: "Genres");
  static final QueryField ARTISTTYPE = QueryField(fieldName: "ArtistType");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "User";
    modelSchemaDefinition.pluralName = "Users";

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
        key: User.USERNAME,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: User.EMAIL,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: User.GENRES,
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.string))));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: User.ARTISTTYPE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class _UserModelType extends ModelType<User> {
  const _UserModelType();

  @override
  User fromJson(Map<String, dynamic> jsonData) {
    return User.fromJson(jsonData);
  }
}
