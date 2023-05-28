import 'package:amit_course/Shared/Service/dio_helper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Models/fakeAPI.dart';

final fakeAPIProvider = StateNotifierProvider<FakeAPI, List<FakeApi>>((ref) => FakeAPI());

class FakeAPI extends StateNotifier<List<FakeApi>> {
  FakeAPI() : super([]);
  late List<FakeApi> allProductList = [];
  late List<FakeApi> electronicsList = [];
  late List<FakeApi> jeweleryList = [];
  late List<FakeApi> menClothingList = [];
  late List<FakeApi> womenClothingList = [];
  late List<String> categoryList = [];

  getAllProductList() async {
    final response = await DioHelper().getApiMethod('https://fakestoreapi.com/products');
    for (var e in response) {
      allProductList.add(FakeApi.fromJson(e));
    }
    state = [...state];
  }

  getElectronicsList() async {
    final response = await DioHelper().getApiMethod('https://fakestoreapi.com/products/category/electronics');
    for (var e in response) {
      electronicsList.add(FakeApi.fromJson(e));
    }
    state = [...state];
  }

  getJeweleryList() async {
    final response = await DioHelper().getApiMethod('https://fakestoreapi.com/products/category/jewelery');
    for (var e in response) {
      jeweleryList.add(FakeApi.fromJson(e));
    }
    state = [...state];
  }

  getMenClothingList() async {
    final response = await DioHelper().getApiMethod("https://fakestoreapi.com/products/category/men's clothing");
    for (var e in response) {
      menClothingList.add(FakeApi.fromJson(e));
    }
    state = [...state];
  }

  getWomenClothingList() async {
    final response = await DioHelper().getApiMethod("https://fakestoreapi.com/products/category/women's clothing");
    for (var e in response) {
      womenClothingList.add(FakeApi.fromJson(e));
    }
    state = [...state];
  }

  getCategoryList() async {
    final response = await DioHelper().getApiMethod('https://fakestoreapi.com/products/categories');
    for (var e in response) {
      categoryList.add(e);
    }
    state = [...state];
  }
}
