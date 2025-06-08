import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cashier/data/db/database_helper.dart';
import 'package:cashier/data/models/menu_item.dart';

final menuItemsProvider = FutureProvider<List<MenuItem>>((ref) async {
  final db = DatabaseHelper.instance;
  final items = await db.getAllMenuItems();
  return items.map((item) => MenuItem.fromJson(item)).toList();
});

final addMenuItemProvider = FutureProvider.family<void, MenuItem>((ref, item) async {
  final db = DatabaseHelper.instance;
  await db.insertMenuItem(item.toJson());
  ref.invalidate(menuItemsProvider);
});

final updateMenuItemProvider = FutureProvider.family<void, MenuItem>((ref, item) async {
  final db = DatabaseHelper.instance;
  await db.updateMenuItem(item.toJson());
  ref.invalidate(menuItemsProvider);
});

final deleteMenuItemProvider = FutureProvider.family<void, int>((ref, id) async {
  final db = DatabaseHelper.instance;
  await db.deleteMenuItem(id);
  ref.invalidate(menuItemsProvider);
}); 