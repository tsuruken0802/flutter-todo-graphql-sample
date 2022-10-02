// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GTodoDto> _$gTodoDtoSerializer = new _$GTodoDtoSerializer();

class _$GTodoDtoSerializer implements StructuredSerializer<GTodoDto> {
  @override
  final Iterable<Type> types = const [GTodoDto, _$GTodoDto];
  @override
  final String wireName = 'GTodoDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, GTodoDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'body',
      serializers.serialize(object.body, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GTodoDto deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GTodoDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GDateTime extends GDateTime {
  @override
  final String value;

  factory _$GDateTime([void Function(GDateTimeBuilder)? updates]) =>
      (new GDateTimeBuilder()..update(updates))._build();

  _$GDateTime._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, r'GDateTime', 'value');
  }

  @override
  GDateTime rebuild(void Function(GDateTimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDateTimeBuilder toBuilder() => new GDateTimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDateTime && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDateTime')..add('value', value))
        .toString();
  }
}

class GDateTimeBuilder implements Builder<GDateTime, GDateTimeBuilder> {
  _$GDateTime? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GDateTimeBuilder();

  GDateTimeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDateTime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDateTime;
  }

  @override
  void update(void Function(GDateTimeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDateTime build() => _build();

  _$GDateTime _build() {
    final _$result = _$v ??
        new _$GDateTime._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'GDateTime', 'value'));
    replace(_$result);
    return _$result;
  }
}

class _$GTodoDto extends GTodoDto {
  @override
  final String body;

  factory _$GTodoDto([void Function(GTodoDtoBuilder)? updates]) =>
      (new GTodoDtoBuilder()..update(updates))._build();

  _$GTodoDto._({required this.body}) : super._() {
    BuiltValueNullFieldError.checkNotNull(body, r'GTodoDto', 'body');
  }

  @override
  GTodoDto rebuild(void Function(GTodoDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTodoDtoBuilder toBuilder() => new GTodoDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTodoDto && body == other.body;
  }

  @override
  int get hashCode {
    return $jf($jc(0, body.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GTodoDto')..add('body', body))
        .toString();
  }
}

class GTodoDtoBuilder implements Builder<GTodoDto, GTodoDtoBuilder> {
  _$GTodoDto? _$v;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  GTodoDtoBuilder();

  GTodoDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _body = $v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GTodoDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTodoDto;
  }

  @override
  void update(void Function(GTodoDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GTodoDto build() => _build();

  _$GTodoDto _build() {
    final _$result = _$v ??
        new _$GTodoDto._(
            body: BuiltValueNullFieldError.checkNotNull(
                body, r'GTodoDto', 'body'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
