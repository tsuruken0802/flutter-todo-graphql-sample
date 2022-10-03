// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:frontend/__generated__/serializers.gql.dart' as _i2;
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i1;

part 'schema.schema.gql.g.dart';

abstract class GDateTime implements Built<GDateTime, GDateTimeBuilder> {
  GDateTime._();

  factory GDateTime([String? value]) =>
      _$GDateTime((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GDateTime> get serializer =>
      _i1.DefaultScalarSerializer<GDateTime>(
          (Object serialized) => GDateTime((serialized as String?)));
}

abstract class GTodoDto implements Built<GTodoDto, GTodoDtoBuilder> {
  GTodoDto._();

  factory GTodoDto([Function(GTodoDtoBuilder b) updates]) = _$GTodoDto;

  String get body;
  static Serializer<GTodoDto> get serializer => _$gTodoDtoSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GTodoDto.serializer,
        this,
      ) as Map<String, dynamic>);
  static GTodoDto? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GTodoDto.serializer,
        json,
      );
}

const possibleTypesMap = {};
