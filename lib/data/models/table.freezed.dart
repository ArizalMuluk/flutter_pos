// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Table _$TableFromJson(Map<String, dynamic> json) {
  return _Table.fromJson(json);
}

/// @nodoc
mixin _$Table {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this Table to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Table
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TableCopyWith<Table> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableCopyWith<$Res> {
  factory $TableCopyWith(Table value, $Res Function(Table) then) =
      _$TableCopyWithImpl<$Res, Table>;
  @useResult
  $Res call({int? id, String name, String status});
}

/// @nodoc
class _$TableCopyWithImpl<$Res, $Val extends Table>
    implements $TableCopyWith<$Res> {
  _$TableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Table
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? status = null,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TableImplCopyWith<$Res> implements $TableCopyWith<$Res> {
  factory _$$TableImplCopyWith(
    _$TableImpl value,
    $Res Function(_$TableImpl) then,
  ) = __$$TableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String name, String status});
}

/// @nodoc
class __$$TableImplCopyWithImpl<$Res>
    extends _$TableCopyWithImpl<$Res, _$TableImpl>
    implements _$$TableImplCopyWith<$Res> {
  __$$TableImplCopyWithImpl(
    _$TableImpl _value,
    $Res Function(_$TableImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Table
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? status = null,
  }) {
    return _then(
      _$TableImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TableImpl implements _Table {
  const _$TableImpl({this.id, required this.name, required this.status});

  factory _$TableImpl.fromJson(Map<String, dynamic> json) =>
      _$$TableImplFromJson(json);

  @override
  final int? id;
  @override
  final String name;
  @override
  final String status;

  @override
  String toString() {
    return 'Table(id: $id, name: $name, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, status);

  /// Create a copy of Table
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TableImplCopyWith<_$TableImpl> get copyWith =>
      __$$TableImplCopyWithImpl<_$TableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TableImplToJson(this);
  }
}

abstract class _Table implements Table {
  const factory _Table({
    final int? id,
    required final String name,
    required final String status,
  }) = _$TableImpl;

  factory _Table.fromJson(Map<String, dynamic> json) = _$TableImpl.fromJson;

  @override
  int? get id;
  @override
  String get name;
  @override
  String get status;

  /// Create a copy of Table
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TableImplCopyWith<_$TableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
