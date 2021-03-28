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

/** This is an auto generated class representing the Obj type in your schema. */
@immutable
class Obj extends Model {
  static const classType = const ObjType();
  final String id;
  final String testoutput;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const Obj._internal({@required this.id, this.testoutput});

  factory Obj({String id, String testoutput}) {
    return Obj._internal(
        id: id == null ? UUID.getUUID() : id, testoutput: testoutput);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Obj && id == other.id && testoutput == other.testoutput;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Obj {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("testoutput=" + "$testoutput");
    buffer.write("}");

    return buffer.toString();
  }

  Obj copyWith({String id, String testoutput}) {
    return Obj(id: id ?? this.id, testoutput: testoutput ?? this.testoutput);
  }

  Obj.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        testoutput = json['testoutput'];

  Map<String, dynamic> toJson() => {'id': id, 'testoutput': testoutput};

  static final QueryField ID = QueryField(fieldName: "obj.id");
  static final QueryField TESTOUTPUT = QueryField(fieldName: "testoutput");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Obj";
    modelSchemaDefinition.pluralName = "Objs";

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
        key: Obj.TESTOUTPUT,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class ObjType extends ModelType<Obj> {
  const ObjType();

  @override
  Obj fromJson(Map<String, dynamic> jsonData) {
    return Obj.fromJson(jsonData);
  }
}
