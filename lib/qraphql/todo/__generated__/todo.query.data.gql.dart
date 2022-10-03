// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:frontend/__generated__/schema.schema.gql.dart' as _i2;
import 'package:frontend/__generated__/serializers.gql.dart' as _i1;

part 'todo.query.data.gql.g.dart';

abstract class GGetTodosData
    implements Built<GGetTodosData, GGetTodosDataBuilder> {
  GGetTodosData._();

  factory GGetTodosData([Function(GGetTodosDataBuilder b) updates]) =
      _$GGetTodosData;

  static void _initializeBuilder(GGetTodosDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetTodosData_todos> get todos;
  static Serializer<GGetTodosData> get serializer => _$gGetTodosDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetTodosData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetTodosData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetTodosData.serializer,
        json,
      );
}

abstract class GGetTodosData_todos
    implements Built<GGetTodosData_todos, GGetTodosData_todosBuilder> {
  GGetTodosData_todos._();

  factory GGetTodosData_todos(
      [Function(GGetTodosData_todosBuilder b) updates]) = _$GGetTodosData_todos;

  static void _initializeBuilder(GGetTodosData_todosBuilder b) =>
      b..G__typename = 'Todo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  double get id;
  String get body;
  _i2.GDateTime get createdAt;
  _i2.GDateTime get updatedAt;
  static Serializer<GGetTodosData_todos> get serializer =>
      _$gGetTodosDataTodosSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetTodosData_todos.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetTodosData_todos? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetTodosData_todos.serializer,
        json,
      );
}
