import 'package:flutter/material.dart';
import 'package:kod_mira_app/data/network/models/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        color: Colors.white,
        height: 320,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
              width: double.infinity,
              height: 130,
              child: Image.network(
                product.urlImage,
                fit: BoxFit.cover,
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.category,
                  style: theme.textTheme.bodyMedium!.copyWith(fontSize: 12, color: Colors.black),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${product.price.toInt()} рублей',
                      style: theme.textTheme.bodyMedium!.copyWith(fontSize: 20, color: Colors.black),
                    ),
                    const Icon(Icons.add)
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(product.name)
              ],
            ),
          )
        ]),
      ),
    );
  }
}
