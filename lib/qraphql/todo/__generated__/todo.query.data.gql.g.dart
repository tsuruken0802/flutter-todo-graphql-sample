// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetTodosData> _$gGetTodosDataSerializer =
    new _$GGetTodosDataSerializer();
Serializer<GGetTodosData_todos> _$gGetTodosDataTodosSerializer =
    new _$GGetTodosData_todosSerializer();

class _$GGetTodosDataSerializer implements StructuredSerializer<GGetTodosData> {
  @override
  final Iterable<Type> types = const [GGetTodosData, _$GGetTodosData];
  @override
  final String wireName = 'GGetTodosData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetTodosData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'todos',
      serializers.serialize(object.todos,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GGetTodosData_todos)])),
    ];

    return result;
  }

  @override
  GGetTodosData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetTodosDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'todos':
          result.todos.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GGetTodosData_todos)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetTodosData_todosSerializer
    implements StructuredSerializer<GGetTodosData_todos> {
  @override
  final Iterable<Type> types = const [
    GGetTodosData_todos,
    _$GGetTodosData_todos
  ];
  @override
  final String wireName = 'GGetTodosData_todos';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetTodosData_todos object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(double)),
      'body',
      serializers.serialize(object.body, specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(_i2.GDateTime)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(_i2.GDateTime)),
    ];

    return result;
  }

  @override
  GGetTodosData_todos deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetTodosData_todosBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
        case 'updatedAt':
          result.updatedAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetTodosData extends GGetTodosData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetTodosData_todos> todos;

  factory _$GGetTodosData([void Function(GGetTodosDataBuilder)? updates]) =>
      (new GGetTodosDataBuilder()..update(updates))._build();

  _$GGetTodosData._({required this.G__typename, required this.todos})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetTodosData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(todos, r'GGetTodosData', 'todos');
  }

  @override
  GGetTodosData rebuild(void Function(GGetTodosDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetTodosDataBuilder toBuilder() => new GGetTodosDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetTodosData &&
        G__typename == other.G__typename &&
        todos == other.todos;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), todos.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetTodosData')
          ..add('G__typename', G__typename)
          ..add('todos', todos))
        .toString();
  }
}

class GGetTodosDataBuilder
    implements Builder<GGetTodosData, GGetTodosDataBuilder> {
  _$GGetTodosData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetTodosData_todos>? _todos;
  ListBuilder<GGetTodosData_todos> get todos =>
      _$this._todos ??= new ListBuilder<GGetTodosData_todos>();
  set todos(ListBuilder<GGetTodosData_todos>? todos) => _$this._todos = todos;

  GGetTodosDataBuilder() {
    GGetTodosData._initializeBuilder(this);
  }

  GGetTodosDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _todos = $v.todos.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetTodosData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetTodosData;
  }

  @override
  void update(void Function(GGetTodosDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetTodosData build() => _build();

  _$GGetTodosData _build() {
    _$GGetTodosData _$result;
    try {
      _$result = _$v ??
          new _$GGetTodosData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GGetTodosData', 'G__typename'),
              todos: todos.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'todos';
        todos.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetTodosData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetTodosData_todos extends GGetTodosData_todos {
  @override
  final String G__typename;
  @override
  final double id;
  @override
  final String body;
  @override
  final _i2.GDateTime createdAt;
  @override
  final _i2.GDateTime updatedAt;

  factory _$GGetTodosData_todos(
          [void Function(GGetTodosData_todosBuilder)? updates]) =>
      (new GGetTodosData_todosBuilder()..update(updates))._build();

  _$GGetTodosData_todos._(
      {required this.G__typename,
      required this.id,
      required this.body,
      required this.createdAt,
      required this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetTodosData_todos', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GGetTodosData_todos', 'id');
    BuiltValueNullFieldError.checkNotNull(body, r'GGetTodosData_todos', 'body');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GGetTodosData_todos', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'GGetTodosData_todos', 'updatedAt');
  }

  @override
  GGetTodosData_todos rebuild(
          void Function(GGetTodosData_todosBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetTodosData_todosBuilder toBuilder() =>
      new GGetTodosData_todosBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetTodosData_todos &&
        G__typename == other.G__typename &&
        id == other.id &&
        body == other.body &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, G__typename.hashCode), id.hashCode), body.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetTodosData_todos')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('body', body)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class GGetTodosData_todosBuilder
    implements Builder<GGetTodosData_todos, GGetTodosData_todosBuilder> {
  _$GGetTodosData_todos? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _id;
  double? get id => _$this._id;
  set id(double? id) => _$this._id = id;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  _i2.GDateTimeBuilder? _createdAt;
  _i2.GDateTimeBuilder get createdAt =>
      _$this._createdAt ??= new _i2.GDateTimeBuilder();
  set createdAt(_i2.GDateTimeBuilder? createdAt) =>
      _$this._createdAt = createdAt;

  _i2.GDateTimeBuilder? _updatedAt;
  _i2.GDateTimeBuilder get updatedAt =>
      _$this._updatedAt ??= new _i2.GDateTimeBuilder();
  set updatedAt(_i2.GDateTimeBuilder? updatedAt) =>
      _$this._updatedAt = updatedAt;

  GGetTodosData_todosBuilder() {
    GGetTodosData_todos._initializeBuilder(this);
  }

  GGetTodosData_todosBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _body = $v.body;
      _createdAt = $v.createdAt.toBuilder();
      _updatedAt = $v.updatedAt.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetTodosData_todos other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetTodosData_todos;
  }

  @override
  void update(void Function(GGetTodosData_todosBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetTodosData_todos build() => _build();

  _$GGetTodosData_todos _build() {
    _$GGetTodosData_todos _$result;
    try {
      _$result = _$v ??
          new _$GGetTodosData_todos._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GGetTodosData_todos', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GGetTodosData_todos', 'id'),
              body: BuiltValueNullFieldError.checkNotNull(
                  body, r'GGetTodosData_todos', 'body'),
              createdAt: createdAt.build(),
              updatedAt: updatedAt.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createdAt';
        createdAt.build();
        _$failedField = 'updatedAt';
        updatedAt.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetTodosData_todos', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
