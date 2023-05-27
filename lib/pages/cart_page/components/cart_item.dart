import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kod_mira_app/data/network/models/product_model.dart';
import 'package:kod_mira_app/providers/cart_provider.dart';

class CartItem extends ConsumerWidget {
  final ProductModel product;
  const CartItem({super.key, required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final products = ref.watch(cartProvider);
    return Container(
      height: 135,
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Row(children: [
        SizedBox(
          width: 135,
          child: CachedNetworkImage(imageUrl: product.urlImage),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(product.name,
                  style: theme.textTheme.bodyMedium!.copyWith(color: Colors.black, fontWeight: FontWeight.w600)),
              Text(product.adress),
              Text(
                '${product.price.toInt()}₽',
                style: theme.textTheme.bodyMedium!.copyWith(color: Colors.black, fontSize: 20),
              ),
              Row(
                children: [
                  const Icon(Icons.favorite_outline),
                  const SizedBox(
                    width: 16,
                  ),
                  const Icon(Icons.close),
                  const SizedBox(
                    width: 34,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15), color: const Color.fromRGBO(132, 177, 0, 1)),
                    child: Row(children: [
                      product.count > 1
                          ? GestureDetector(
                              onTap: () {
                                ref.watch(cartProvider.notifier).state.insert(
                                    ref.read(cartProvider).indexWhere((element) => element.id == product.id),
                                    ProductModel(
                                        id: product.id,
                                        name: product.name,
                                        description: product.description,
                                        count: product.count - 1,
                                        price: product.price,
                                        discount: product.discount,
                                        adress: product.adress,
                                        urlImage: product.urlImage,
                                        category: product.category));
                              },
                              child: Text(
                                '-',
                                style: theme.textTheme.bodyMedium!.copyWith(color: Colors.white, fontSize: 20),
                              ))
                          : const SizedBox(
                              width: 8,
                            ),
                      const SizedBox(width: 12),
                      Text(
                        '${products.firstWhere((element) => element.id == product.id).count}',
                        style: theme.textTheme.bodyMedium!.copyWith(color: Colors.white),
                      ),
                      const SizedBox(width: 12),
                      GestureDetector(
                          onTap: () {
                            List<ProductModel> currentProducts = ref.read(cartProvider.notifier).state;
                            currentProducts.insert(
                                currentProducts.indexWhere((element) => element.id == product.id),
                                ProductModel(
                                    id: product.id,
                                    name: product.name,
                                    description: product.description,
                                    count: product.count + 1,
                                    price: product.price,
                                    discount: product.discount,
                                    adress: product.adress,
                                    urlImage: product.urlImage,
                                    category: product.category));
                            ref.watch(cartProvider.notifier).state = currentProducts;
                          },
                          child: Text(
                            '+',
                            style: theme.textTheme.bodyMedium!.copyWith(color: Colors.white, fontSize: 20),
                          ))
                    ]),
                  )
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
