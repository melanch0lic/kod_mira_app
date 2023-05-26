import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kod_mira_app/data/network/models/product_model.dart';

import '../data/network/api_client.dart';
import 'category_catalog_type_provider.dart';

final getProductByCategoryProvider = FutureProvider<List<ProductModel>>((ref) async {
  return ref.read(apiClientProvider).getProductsByCategory(ref.read(categoryCatalogTypeProvider));
});
