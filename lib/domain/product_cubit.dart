import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/product.dart';
import '../data/product_repository.dart';

class ProductCubit extends Cubit<List<List<Product>>> {
  final ProductRepository _productRepository;

  ProductCubit(this._productRepository) : super([]);

  Future<void> fetchProducts(List<String> categories) async {
    List<List<Product>> allProducts = [];
    try {
      for (String category in categories) {
        final products = await _productRepository.fetchProducts(category);
        allProducts.add(products);
      }

      emit(allProducts);
    } catch (e) {
      emit([]);
    }
  }
}
