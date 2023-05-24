import 'package:amit_course/Models/products_models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cartProvider = StateNotifierProvider<CartClass, List<ProductsModels>>((ref) {
  return CartClass();
});

class CartClass extends StateNotifier<List<ProductsModels>> {
  int cartProductNumber = 0;
  double totalPrice = 0;
  CartClass() : super([]);

  addProductInCart(ProductsModels productModel) {
    if (productModel.quantity == null || productModel.quantity == 0) {
      productModel.quantity = 1;
      totalPrice = totalPrice + productModel.productPrice;
      cartProductNumber++;
      state = [...state, productModel];
    } else {
      productModel.quantity = productModel.quantity! + 1;
      totalPrice = totalPrice + productModel.productPrice;
      cartProductNumber++;
      state = [...state];
    }
    return state;
  }

  deleteProductInCart(ProductsModels productModel) {
    if (productModel.quantity == 1) {
      productModel.quantity = 0;
      state.remove(productModel);
      totalPrice = totalPrice - productModel.productPrice;
      cartProductNumber--;
      if (state.isEmpty) {
        totalPrice = 0;
      }
      state = [...state];
    } else {
      productModel.quantity = productModel.quantity! - 1;
      totalPrice = totalPrice - productModel.productPrice;
      cartProductNumber--;
      state = [...state];
    }
    return state;
  }

  clearCart() {
    cartProductNumber = 0;
    totalPrice = 0;
    for (var product in state) {
      product.quantity = 0;
    }
    state = [];
  }
}
