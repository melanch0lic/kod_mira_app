import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:kod_mira_app/pages/widgets/product_card.dart';

import '../../../providers/requests_provider.dart';

class FarmCatalogList extends ConsumerWidget {
  const FarmCatalogList({super.key});

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
          itemCount: data.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 6, crossAxisSpacing: 6, mainAxisExtent: 230),
          itemBuilder: ((context, index) => ProductCardCart(product: data[index]))),
    );
  }
}
