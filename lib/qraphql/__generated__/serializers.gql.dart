// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:frontend/qraphql/__generated__/schema.schema.gql.dart'
    show GDateTime, GTodoDto;
import 'package:frontend/qraphql/todo/__generated__/todo.query.data.gql.dart'
    show GGetTodosData, GGetTodosData_todos;
import 'package:frontend/qraphql/todo/__generated__/todo.query.req.gql.dart'
    show GGetTodosReq;
import 'package:frontend/qraphql/todo/__generated__/todo.query.var.gql.dart'
    show GGetTodosVars;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GDateTime,
  GGetTodosData,
  GGetTodosData_todos,
  GGetTodosReq,
  GGetTodosVars,
  GTodoDto,
])
final Serializers serializers = _serializersBuilder.build();
