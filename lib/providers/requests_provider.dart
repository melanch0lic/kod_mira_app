import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kod_mira_app/data/network/models/product_model.dart';
import 'package:kod_mira_app/data/network/models/tender_model.dart';

import '../data/network/api_client.dart';
import 'category_catalog_type_provider.dart';

final getProductByCategoryProvider = FutureProvider.autoDispose<List<ProductModel>>((ref) async {
  return ref.read(apiClientProvider).getProductsByCategory(ref.watch(categoryCatalogTypeProvider));
});

final getTenderByProvider = FutureProvider.autoDispose<List<TenderModel>>((ref) async {
  return ref.read(apiClientProvider).getTenders();
});

final getTenderById = FutureProvider.family<TenderModel, int>((ref, id) async {
  return ref.read(apiClientProvider).getTenderDetailInfoById(id);
});
