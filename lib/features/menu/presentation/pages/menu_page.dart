import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cashier/features/menu/presentation/providers/menu_provider.dart';
import 'package:cashier/features/menu/presentation/widgets/menu_item_card.dart';
import 'package:cashier/features/cart/presentation/providers/cart_provider.dart';

class MenuPage extends ConsumerWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuItems = ref.watch(menuItemsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: menuItems.when(
        data: (items) {
          if (items.isEmpty) {
            return const Center(
              child: Text('No menu items yet. Add some!'),
            );
          }

          if (items.length <= 3) {
            return ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return MenuItemCard(
                  menuItem: items[index],
                  onTap: () {
                    ref.read(cartProvider.notifier).addItem(items[index]);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('${items[index].name} added to cart'),
                        duration: const Duration(seconds: 1),
                      ),
                    );
                  },
                );
              },
            );
          }

          return GridView.builder(
            padding: const EdgeInsets.all(16),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return MenuItemCard(
                menuItem: items[index],
                onTap: () {
                  ref.read(cartProvider.notifier).addItem(items[index]);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${items[index].name} added to cart'),
                      duration: const Duration(seconds: 1),
                    ),
                  );
                },
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Text('Error: $error'),
        ),
      ),
    );
  }
} 