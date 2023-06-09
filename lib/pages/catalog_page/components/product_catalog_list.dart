import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:kod_mira_app/providers/requests_provider.dart';

import '../../widgets/product_card_cart.dart';

class ProductCatalogList extends ConsumerWidget {
  const ProductCatalogList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(getProductByCategoryProvider);
    return data.when(
      loading: () => Center(
          child: SpinKitFadingCircle(
        color: Theme.of(context).indicatorColor,
      )),
      error: (error, stackTrace) => Text('Ошибка $error'),
      data: (data) => GridView.builder(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.only(top: 20),
          shrinkWrap: true,
          itemCount: data.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 15, crossAxisSpacing: 10, mainAxisExtent: 230),
          itemBuilder: ((context, index) => ProductCardCart(product: data[index]))),
    );
  }
}
