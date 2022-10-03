// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetTodosVars> _$gGetTodosVarsSerializer =
    new _$GGetTodosVarsSerializer();

class _$GGetTodosVarsSerializer implements StructuredSerializer<GGetTodosVars> {
  @override
  final Iterable<Type> types = const [GGetTodosVars, _$GGetTodosVars];
  @override
  final String wireName = 'GGetTodosVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetTodosVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGetTodosVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGetTodosVarsBuilder().build();
  }
}

class _$GGetTodosVars extends GGetTodosVars {
  factory _$GGetTodosVars([void Function(GGetTodosVarsBuilder)? updates]) =>
      (new GGetTodosVarsBuilder()..update(updates))._build();

  _$GGetTodosVars._() : super._();

  @override
  GGetTodosVars rebuild(void Function(GGetTodosVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetTodosVarsBuilder toBuilder() => new GGetTodosVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetTodosVars;
  }

  @override
  int get hashCode {
    return 874194069;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GGetTodosVars').toString();
  }
}

class GGetTodosVarsBuilder
    implements Builder<GGetTodosVars, GGetTodosVarsBuilder> {
  _$GGetTodosVars? _$v;

  GGetTodosVarsBuilder();

  @override
  void replace(GGetTodosVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetTodosVars;
  }

  @override
  void update(void Function(GGetTodosVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetTodosVars build() => _build();

  _$GGetTodosVars _build() {
    final _$result = _$v ?? new _$GGetTodosVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
