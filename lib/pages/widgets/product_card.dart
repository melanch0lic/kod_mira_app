import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kod_mira_app/data/network/models/product_model.dart';
import 'package:kod_mira_app/providers/cart_provider.dart';

class ProductCardCart extends StatelessWidget {
  final ProductModel product;
  const ProductCardCart({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 310,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
            child: CachedNetworkImage(
          imageUrl: product.urlImage,
          fit: BoxFit.cover,
        )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${product.price.toInt()}₽',
                style: theme.textTheme.bodyMedium!.copyWith(color: Colors.black, fontSize: 20),
              ),
              const SizedBox(height: 3),
              Text(
                product.name,
                style: theme.textTheme.bodyMedium!.copyWith(color: const Color.fromRGBO(44, 44, 46, 1)),
              ),
              Text(
                product.category,
                style: theme.textTheme.bodyMedium!.copyWith(color: const Color.fromRGBO(44, 44, 46, 1)),
              ),
              const SizedBox(
                height: 8,
              ),
              Consumer(
                builder: (context, ref, child) {
                  return InkWell(
                    onTap: () {
                      ref.watch(cartProvider.notifier).state = ref.read(cartProvider) + [product];

                      print(ref.watch(cartProvider.notifier).state);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(132, 177, 0, 1), borderRadius: BorderRadius.circular(15)),
                      width: double.infinity,
                      height: 30,
                      child: Center(
                          child: Text(
                        'Добавить в корзину',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),
                      )),
                    ),
                  );
                },
              )
            ],
          ),
        ))
      ]),
    );
  }
}
