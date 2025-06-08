// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      id: (json['id'] as num?)?.toInt(),
      totalAmount: (json['totalAmount'] as num).toInt(),
      paymentAmount: (json['paymentAmount'] as num).toInt(),
      changeAmount: (json['changeAmount'] as num).toInt(),
      transactionDate: DateTime.parse(json['transactionDate'] as String),
      tableId: (json['tableId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'totalAmount': instance.totalAmount,
      'paymentAmount': instance.paymentAmount,
      'changeAmount': instance.changeAmount,
      'transactionDate': instance.transactionDate.toIso8601String(),
      'tableId': instance.tableId,
    };

_$TransactionDetailImpl _$$TransactionDetailImplFromJson(
  Map<String, dynamic> json,
) => _$TransactionDetailImpl(
  id: (json['id'] as num?)?.toInt(),
  transactionId: (json['transactionId'] as num).toInt(),
  menuItemId: (json['menuItemId'] as num).toInt(),
  quantity: (json['quantity'] as num).toInt(),
  priceAtTransaction: (json['priceAtTransaction'] as num).toInt(),
);

Map<String, dynamic> _$$TransactionDetailImplToJson(
  _$TransactionDetailImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'transactionId': instance.transactionId,
  'menuItemId': instance.menuItemId,
  'quantity': instance.quantity,
  'priceAtTransaction': instance.priceAtTransaction,
};
