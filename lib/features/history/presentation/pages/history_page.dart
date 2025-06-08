import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cashier/features/history/presentation/widgets/table_list.dart';
import 'package:cashier/features/history/presentation/widgets/transaction_list.dart';

class HistoryPage extends ConsumerWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('History'),
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Tables'),
              Tab(text: 'Transactions'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            TableList(),
            TransactionList(),
          ],
        ),
      ),
    );
  }
} 