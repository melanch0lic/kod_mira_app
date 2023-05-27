import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kod_mira_app/data/network/models/product_model.dart';

class CartItem extends StatelessWidget {
  final ProductModel product;
  const CartItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 135,
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
              const Row(
                children: [Icon(Icons.favorite_outline), Icon(Icons.close)],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
