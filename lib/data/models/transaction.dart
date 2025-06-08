import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    int? id,
    required int totalAmount,
    required int paymentAmount,
    required int changeAmount,
    required DateTime transactionDate,
    int? tableId,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);
}

@freezed
class TransactionDetail with _$TransactionDetail {
  const factory TransactionDetail({
    int? id,
    required int transactionId,
    required int menuItemId,
    required int quantity,
    required int priceAtTransaction,
  }) = _TransactionDetail;

  factory TransactionDetail.fromJson(Map<String, dynamic> json) =>
      _$TransactionDetailFromJson(json);
} 