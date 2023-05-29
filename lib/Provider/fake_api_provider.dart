import 'package:amit_course/Shared/Service/dio_helper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Models/fakeAPI.dart';

enum Category {
  electronics,
  jewelery,
  menClothing,
  womenClothing,
}

final fakeAPIProvider = StateNotifierProvider<FakeAPI, List<FakeApi>>((ref) => FakeAPI());

class FakeAPI extends StateNotifier<List<FakeApi>> {
  FakeAPI() : super([]);
  late List<FakeApi> allProductList = [];
  late List<String> categoryList = [];
  late List<FakeApi> suggestions = [];

  searchAllProductList(String searchText) {
    state = [...state];
    if (searchText.isNotEmpty) {
      suggestions = allProductList.where((product) {
        final productName = product.title!.toLowerCase();
        allProductList = suggestions;
        return productName.contains(searchText);
      }).toList();
      allProductList = suggestions;
      state = [...state];
    } else if (searchText.isEmpty) {
      allProductList = [];
      allProductList = state;
      state = [...state];
    }
  }

  getAllProductList() async {
    final response = await DioHelper.getApiMethod('');
    for (var e in response) {
      state = [...state, FakeApi.fromJson(e)];
    }
    allProductList = state;
  }

  getCertainCategory(Category category) {
    List<FakeApi> listForCategory = [];
    switch (category) {
      case Category.electronics:
        listForCategory.addAll(state.where((product) {
          final productCategory = product.category;
          return productCategory!.contains('electronics');
        }));
        return listForCategory;
      case Category.jewelery:
        listForCategory.addAll(state.where((product) {
          final productCategory = product.category;
          return productCategory!.contains('jewelery');
        }));
        return listForCategory;
      case Category.menClothing:
        listForCategory.addAll(state.where((product) {
          final productCategory = product.category;
          return productCategory!.contains("men's clothing");
        }));
        return listForCategory;
      case Category.womenClothing:
        listForCategory.addAll(state.where((product) {
          final productCategory = product.category;
          return productCategory!.contains("women's clothing");
        }));
        return listForCategory;
    }
  }

  getCategoryList() async {
    final response = await DioHelper.getApiMethod('/products/categories');
    for (var e in response) {
      categoryList.add(e);
    }
    state = [...state];
  }
}
