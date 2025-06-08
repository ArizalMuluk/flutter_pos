import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cashier/features/history/presentation/providers/history_provider.dart';
import 'package:cashier/data/models/table.dart' as models;

class TableList extends ConsumerWidget {
  const TableList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tables = ref.watch(tablesProvider);

    return Scaffold(
      body: tables.when(
        data: (tables) {
          if (tables.isEmpty) {
            return const Center(
              child: Text('No tables yet. Add some!'),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: tables.length,
            itemBuilder: (context, index) {
              final table = tables[index];
              return Card(
                child: ListTile(
                  title: Text(table.name),
                  subtitle: Text(table.status),
                  trailing: IconButton(
                    icon: Icon(
                      table.status == 'Available'
                          ? Icons.check_circle
                          : Icons.cancel,
                      color: table.status == 'Available'
                          ? Colors.green
                          : Colors.red,
                    ),
                    onPressed: () {
                      final newStatus = table.status == 'Available'
                          ? 'Occupied'
                          : 'Available';
                      ref.read(updateTableStatusProvider((table.id!, newStatus)));
                    },
                  ),
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Text('Error: $error'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddTableDialog(context, ref);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showAddTableDialog(BuildContext context, WidgetRef ref) {
    final controller = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Add Table'),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(
            labelText: 'Table Name',
            border: OutlineInputBorder(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              if (controller.text.isNotEmpty) {
                ref.read(
                  addTableProvider(
                    models.Table(
                      name: controller.text,
                      status: 'Available',
                    ),
                  ),
                );
                Navigator.pop(context);
              }
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
} 