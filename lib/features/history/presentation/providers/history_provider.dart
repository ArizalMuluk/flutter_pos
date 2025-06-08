import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cashier/data/db/database_helper.dart';
import 'package:cashier/data/models/table.dart';
import 'package:cashier/data/models/transaction.dart';

final tablesProvider = FutureProvider<List<Table>>((ref) async {
  final db = DatabaseHelper.instance;
  final tables = await db.getAllTables();
  return tables.map((table) => Table.fromJson(table)).toList();
});

final addTableProvider = FutureProvider.family<void, Table>((ref, table) async {
  final db = DatabaseHelper.instance;
  await db.insertTable(table.toJson());
  ref.invalidate(tablesProvider);
});

final updateTableStatusProvider =
    FutureProvider.family<void, (int, String)>((ref, params) async {
  final db = DatabaseHelper.instance;
  await db.updateTableStatus(params.$1, params.$2);
  ref.invalidate(tablesProvider);
});

final transactionsProvider = FutureProvider<List<Transaction>>((ref) async {
  final db = DatabaseHelper.instance;
  final now = DateTime.now();
  final startOfDay = DateTime(now.year, now.month, now.day);
  final endOfDay = startOfDay.add(const Duration(days: 1));
  final transactions = await db.getTransactionsByDateRange(startOfDay, endOfDay);
  return transactions.map((t) => Transaction.fromJson(t)).toList();
});

final transactionDetailsProvider =
    FutureProvider.family<List<TransactionDetail>, int>((ref, transactionId) async {
  final db = DatabaseHelper.instance;
  final details = await db.getTransactionDetails(transactionId);
  return details.map((d) => TransactionDetail.fromJson(d)).toList();
}); 