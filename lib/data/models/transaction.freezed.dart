// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
mixin _$Transaction {
  int? get id => throw _privateConstructorUsedError;
  int get totalAmount => throw _privateConstructorUsedError;
  int get paymentAmount => throw _privateConstructorUsedError;
  int get changeAmount => throw _privateConstructorUsedError;
  DateTime get transactionDate => throw _privateConstructorUsedError;
  int? get tableId => throw _privateConstructorUsedError;

  /// Serializes this Transaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
    Transaction value,
    $Res Function(Transaction) then,
  ) = _$TransactionCopyWithImpl<$Res, Transaction>;
  @useResult
  $Res call({
    int? id,
    int totalAmount,
    int paymentAmount,
    int changeAmount,
    DateTime transactionDate,
    int? tableId,
  });
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res, $Val extends Transaction>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? totalAmount = null,
    Object? paymentAmount = null,
    Object? changeAmount = null,
    Object? transactionDate = null,
    Object? tableId = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalAmount: null == totalAmount
                ? _value.totalAmount
                : totalAmount // ignore: cast_nullable_to_non_nullable
                      as int,
            paymentAmount: null == paymentAmount
                ? _value.paymentAmount
                : paymentAmount // ignore: cast_nullable_to_non_nullable
                      as int,
            changeAmount: null == changeAmount
                ? _value.changeAmount
                : changeAmount // ignore: cast_nullable_to_non_nullable
                      as int,
            transactionDate: null == transactionDate
                ? _value.transactionDate
                : transactionDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            tableId: freezed == tableId
                ? _value.tableId
                : tableId // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TransactionImplCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$TransactionImplCopyWith(
    _$TransactionImpl value,
    $Res Function(_$TransactionImpl) then,
  ) = __$$TransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    int totalAmount,
    int paymentAmount,
    int changeAmount,
    DateTime transactionDate,
    int? tableId,
  });
}

/// @nodoc
class __$$TransactionImplCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$TransactionImpl>
    implements _$$TransactionImplCopyWith<$Res> {
  __$$TransactionImplCopyWithImpl(
    _$TransactionImpl _value,
    $Res Function(_$TransactionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? totalAmount = null,
    Object? paymentAmount = null,
    Object? changeAmount = null,
    Object? transactionDate = null,
    Object? tableId = freezed,
  }) {
    return _then(
      _$TransactionImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalAmount: null == totalAmount
            ? _value.totalAmount
            : totalAmount // ignore: cast_nullable_to_non_nullable
                  as int,
        paymentAmount: null == paymentAmount
            ? _value.paymentAmount
            : paymentAmount // ignore: cast_nullable_to_non_nullable
                  as int,
        changeAmount: null == changeAmount
            ? _value.changeAmount
            : changeAmount // ignore: cast_nullable_to_non_nullable
                  as int,
        transactionDate: null == transactionDate
            ? _value.transactionDate
            : transactionDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        tableId: freezed == tableId
            ? _value.tableId
            : tableId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionImpl implements _Transaction {
  const _$TransactionImpl({
    this.id,
    required this.totalAmount,
    required this.paymentAmount,
    required this.changeAmount,
    required this.transactionDate,
    this.tableId,
  });

  factory _$TransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionImplFromJson(json);

  @override
  final int? id;
  @override
  final int totalAmount;
  @override
  final int paymentAmount;
  @override
  final int changeAmount;
  @override
  final DateTime transactionDate;
  @override
  final int? tableId;

  @override
  String toString() {
    return 'Transaction(id: $id, totalAmount: $totalAmount, paymentAmount: $paymentAmount, changeAmount: $changeAmount, transactionDate: $transactionDate, tableId: $tableId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.paymentAmount, paymentAmount) ||
                other.paymentAmount == paymentAmount) &&
            (identical(other.changeAmount, changeAmount) ||
                other.changeAmount == changeAmount) &&
            (identical(other.transactionDate, transactionDate) ||
                other.transactionDate == transactionDate) &&
            (identical(other.tableId, tableId) || other.tableId == tableId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    totalAmount,
    paymentAmount,
    changeAmount,
    transactionDate,
    tableId,
  );

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      __$$TransactionImplCopyWithImpl<_$TransactionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionImplToJson(this);
  }
}

abstract class _Transaction implements Transaction {
  const factory _Transaction({
    final int? id,
    required final int totalAmount,
    required final int paymentAmount,
    required final int changeAmount,
    required final DateTime transactionDate,
    final int? tableId,
  }) = _$TransactionImpl;

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$TransactionImpl.fromJson;

  @override
  int? get id;
  @override
  int get totalAmount;
  @override
  int get paymentAmount;
  @override
  int get changeAmount;
  @override
  DateTime get transactionDate;
  @override
  int? get tableId;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TransactionDetail _$TransactionDetailFromJson(Map<String, dynamic> json) {
  return _TransactionDetail.fromJson(json);
}

/// @nodoc
mixin _$TransactionDetail {
  int? get id => throw _privateConstructorUsedError;
  int get transactionId => throw _privateConstructorUsedError;
  int get menuItemId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  int get priceAtTransaction => throw _privateConstructorUsedError;

  /// Serializes this TransactionDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionDetailCopyWith<TransactionDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDetailCopyWith<$Res> {
  factory $TransactionDetailCopyWith(
    TransactionDetail value,
    $Res Function(TransactionDetail) then,
  ) = _$TransactionDetailCopyWithImpl<$Res, TransactionDetail>;
  @useResult
  $Res call({
    int? id,
    int transactionId,
    int menuItemId,
    int quantity,
    int priceAtTransaction,
  });
}

/// @nodoc
class _$TransactionDetailCopyWithImpl<$Res, $Val extends TransactionDetail>
    implements $TransactionDetailCopyWith<$Res> {
  _$TransactionDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? transactionId = null,
    Object? menuItemId = null,
    Object? quantity = null,
    Object? priceAtTransaction = null,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            transactionId: null == transactionId
                ? _value.transactionId
                : transactionId // ignore: cast_nullable_to_non_nullable
                      as int,
            menuItemId: null == menuItemId
                ? _value.menuItemId
                : menuItemId // ignore: cast_nullable_to_non_nullable
                      as int,
            quantity: null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                      as int,
            priceAtTransaction: null == priceAtTransaction
                ? _value.priceAtTransaction
                : priceAtTransaction // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TransactionDetailImplCopyWith<$Res>
    implements $TransactionDetailCopyWith<$Res> {
  factory _$$TransactionDetailImplCopyWith(
    _$TransactionDetailImpl value,
    $Res Function(_$TransactionDetailImpl) then,
  ) = __$$TransactionDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    int transactionId,
    int menuItemId,
    int quantity,
    int priceAtTransaction,
  });
}

/// @nodoc
class __$$TransactionDetailImplCopyWithImpl<$Res>
    extends _$TransactionDetailCopyWithImpl<$Res, _$TransactionDetailImpl>
    implements _$$TransactionDetailImplCopyWith<$Res> {
  __$$TransactionDetailImplCopyWithImpl(
    _$TransactionDetailImpl _value,
    $Res Function(_$TransactionDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransactionDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? transactionId = null,
    Object? menuItemId = null,
    Object? quantity = null,
    Object? priceAtTransaction = null,
  }) {
    return _then(
      _$TransactionDetailImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        transactionId: null == transactionId
            ? _value.transactionId
            : transactionId // ignore: cast_nullable_to_non_nullable
                  as int,
        menuItemId: null == menuItemId
            ? _value.menuItemId
            : menuItemId // ignore: cast_nullable_to_non_nullable
                  as int,
        quantity: null == quantity
            ? _value.quantity
            : quantity // ignore: cast_nullable_to_non_nullable
                  as int,
        priceAtTransaction: null == priceAtTransaction
            ? _value.priceAtTransaction
            : priceAtTransaction // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionDetailImpl implements _TransactionDetail {
  const _$TransactionDetailImpl({
    this.id,
    required this.transactionId,
    required this.menuItemId,
    required this.quantity,
    required this.priceAtTransaction,
  });

  factory _$TransactionDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionDetailImplFromJson(json);

  @override
  final int? id;
  @override
  final int transactionId;
  @override
  final int menuItemId;
  @override
  final int quantity;
  @override
  final int priceAtTransaction;

  @override
  String toString() {
    return 'TransactionDetail(id: $id, transactionId: $transactionId, menuItemId: $menuItemId, quantity: $quantity, priceAtTransaction: $priceAtTransaction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.menuItemId, menuItemId) ||
                other.menuItemId == menuItemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.priceAtTransaction, priceAtTransaction) ||
                other.priceAtTransaction == priceAtTransaction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    transactionId,
    menuItemId,
    quantity,
    priceAtTransaction,
  );

  /// Create a copy of TransactionDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionDetailImplCopyWith<_$TransactionDetailImpl> get copyWith =>
      __$$TransactionDetailImplCopyWithImpl<_$TransactionDetailImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionDetailImplToJson(this);
  }
}

abstract class _TransactionDetail implements TransactionDetail {
  const factory _TransactionDetail({
    final int? id,
    required final int transactionId,
    required final int menuItemId,
    required final int quantity,
    required final int priceAtTransaction,
  }) = _$TransactionDetailImpl;

  factory _TransactionDetail.fromJson(Map<String, dynamic> json) =
      _$TransactionDetailImpl.fromJson;

  @override
  int? get id;
  @override
  int get transactionId;
  @override
  int get menuItemId;
  @override
  int get quantity;
  @override
  int get priceAtTransaction;

  /// Create a copy of TransactionDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionDetailImplCopyWith<_$TransactionDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
