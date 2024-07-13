import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_/model/peoduct.dart';

final cartStateNotifierProvider =
    StateNotifierProvider.autoDispose<CartStateNotifier, List<Product>>((ref) {
  return CartStateNotifier();
});

class CartStateNotifier extends StateNotifier<List<Product>> {
  CartStateNotifier() : super([]);

  void addProduct(Product product) {
    state = [...state, product];
  }

  void clearCart() {
    state = [];
  }
}
