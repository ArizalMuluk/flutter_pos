import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:excel/excel.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:cashier/data/db/database_helper.dart';
import 'package:intl/intl.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton.icon(
              onPressed: () => _exportReport(context),
              icon: const Icon(Icons.file_download),
              label: const Text('Export Report (XLSX)'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _exportReport(BuildContext context) async {
    final db = DatabaseHelper.instance;
    final now = DateTime.now();
    final startOfDay = DateTime(now.year, now.month, now.day);
    final endOfDay = startOfDay.add(const Duration(days: 1));
    final transactions = await db.getTransactionsByDateRange(startOfDay, endOfDay);

    final excel = Excel.createExcel();
    final sheet = excel.sheets.values.first;

    // Add headers
    sheet.appendRow([
      TextCellValue('Transaction ID'),
      TextCellValue('Date'),
      TextCellValue('Time'),
      TextCellValue('Total Amount'),
      TextCellValue('Payment Amount'),
      TextCellValue('Change Amount'),
    ]);

    // Add data
    for (final transaction in transactions) {
      final date = DateTime.parse(transaction['transaction_date'] as String);
      sheet.appendRow([
        TextCellValue(transaction['id'].toString()),
        TextCellValue(DateFormat('yyyy-MM-dd').format(date)),
        TextCellValue(DateFormat('HH:mm').format(date)),
        TextCellValue((transaction['total_amount'] as int).toString()),
        TextCellValue((transaction['payment_amount'] as int).toString()),
        TextCellValue((transaction['change_amount'] as int).toString()),
      ]);
    }

    // Save file
    final directory = await getApplicationDocumentsDirectory();
    final fileName = 'sales_report_${DateFormat('yyyyMMdd').format(now)}.xlsx';
    final file = await File('${directory.path}/$fileName').create();
    await file.writeAsBytes(excel.encode()!);

    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Report saved to: ${file.path}'),
        ),
      );
    }
  }
} 