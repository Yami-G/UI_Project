import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Models/fakeAPI.dart';
import '../Models/products_models.dart';

final productDetails = StateProvider.autoDispose(
  (ref) => ProductsModels(
    productID: 5,
    productName: 'productName',
    productPrice: 20,
    description: 'description',
    imagePath: 'imagePath',
    isFavorite: false,
    productColor: ProductColor.red,
  ),
);
final fakeProductDetails = StateProvider((ref) => FakeApi(
      id: 1,
      price: 20,
      description: '',
      image: '',
      title: '',
      category: '',
    ));
