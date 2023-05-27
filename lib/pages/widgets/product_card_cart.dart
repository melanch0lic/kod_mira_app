import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kod_mira_app/data/network/models/product_model.dart';
import 'package:kod_mira_app/providers/cart_provider.dart';

import '../../navigation/router.gr.dart';

class ProductCardCart extends ConsumerStatefulWidget {
  final ProductModel product;
  const ProductCardCart({super.key, required this.product});

  @override
  ConsumerState<ProductCardCart> createState() => _ProductCardCartState();
}

class _ProductCardCartState extends ConsumerState<ProductCardCart> {
  @override
  Widget build(BuildContext context) {
    final products = ref.watch(cartProvider);
    final theme = Theme.of(context);
    return Container(
      height: 310,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
            child: GestureDetector(
          onTap: () {
            context.router.push(ProductDetailRoute(product: widget.product));
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: CachedNetworkImage(
              width: double.infinity,
              imageUrl: widget.product.urlImage,
              fit: BoxFit.cover,
            ),
          ),
        )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${widget.product.price.toInt()}₽',
                style: theme.textTheme.bodyMedium!.copyWith(color: Colors.black, fontSize: 20),
              ),
              const SizedBox(height: 3),
              Text(
                widget.product.name,
                style: theme.textTheme.bodyMedium!.copyWith(color: const Color.fromRGBO(44, 44, 46, 1)),
              ),
              Text(
                widget.product.category,
                style: theme.textTheme.bodyMedium!.copyWith(color: const Color.fromRGBO(44, 44, 46, 1)),
              ),
              const SizedBox(
                height: 8,
              ),
              Consumer(
                builder: (context, ref, child) {
                  return InkWell(
                    onTap: products.contains(widget.product)
                        ? () {
                            ref.watch(cartProvider.notifier).state =
                                ref.read(cartProvider).where((element) => element.id != widget.product.id).toList();
                          }
                        : () {
                            ref.watch(cartProvider.notifier).state = ref.read(cartProvider) + [widget.product];
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                duration: Duration(seconds: 1),
                                backgroundColor: Color.fromRGBO(132, 177, 0, 1),
                                content: Text('Товар добавлен в корзину')));
                          },
                    child: Container(
                      decoration: BoxDecoration(
                          color: products.contains(widget.product)
                              ? theme.scaffoldBackgroundColor
                              : const Color.fromRGBO(132, 177, 0, 1),
                          borderRadius: BorderRadius.circular(15)),
                      width: double.infinity,
                      height: 30,
                      child: Center(
                          child: products.contains(widget.product)
                              ? Text('Убрать из корзины',
                                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black))
                              : Text(
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
