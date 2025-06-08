import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cashier/data/models/menu_item.dart';

class CartItem {
  final MenuItem menuItem;
  final int quantity;

  CartItem({
    required this.menuItem,
    required this.quantity,
  });

  int get totalPrice => menuItem.price * quantity;
}

class CartNotifier extends StateNotifier<List<CartItem>> {
  CartNotifier() : super([]);

  void addItem(MenuItem menuItem) {
    final existingIndex = state.indexWhere(
      (item) => item.menuItem.id == menuItem.id,
    );

    if (existingIndex >= 0) {
      state = [
        ...state.sublist(0, existingIndex),
        CartItem(
          menuItem: menuItem,
          quantity: state[existingIndex].quantity + 1,
        ),
        ...state.sublist(existingIndex + 1),
      ];
    } else {
      state = [...state, CartItem(menuItem: menuItem, quantity: 1)];
    }
  }

  void incrementQuantity(CartItem item) {
    final index = state.indexWhere(
      (cartItem) => cartItem.menuItem.id == item.menuItem.id,
    );
    if (index >= 0) {
      state = [
        ...state.sublist(0, index),
        CartItem(
          menuItem: item.menuItem,
          quantity: item.quantity + 1,
        ),
        ...state.sublist(index + 1),
      ];
    }
  }

  void decrementQuantity(CartItem item) {
    final index = state.indexWhere(
      (cartItem) => cartItem.menuItem.id == item.menuItem.id,
    );
    if (index >= 0) {
      if (item.quantity > 1) {
        state = [
          ...state.sublist(0, index),
          CartItem(
            menuItem: item.menuItem,
            quantity: item.quantity - 1,
          ),
          ...state.sublist(index + 1),
        ];
      } else {
        state = [
          ...state.sublist(0, index),
          ...state.sublist(index + 1),
        ];
      }
    }
  }

  void clearCart() {
    state = [];
  }
}

final cartProvider = StateNotifierProvider<CartNotifier, List<CartItem>>((ref) {
  return CartNotifier();
});

final cartItemsProvider = Provider<List<CartItem>>((ref) {
  return ref.watch(cartProvider);
});

final cartTotalProvider = Provider<int>((ref) {
  final items = ref.watch(cartProvider);
  return items.fold(0, (total, item) => total + item.totalPrice);
}); 