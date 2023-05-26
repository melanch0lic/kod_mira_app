import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kod_mira_app/data/network/models/product_model.dart';

final StateProvider cartProvider = StateProvider<List<ProductModel>>((ref) {
  return [];
});

final StateProvider cartCountProvider = StateProvider<int>((ref) {
  return ref.watch(cartProvider).length;
});
