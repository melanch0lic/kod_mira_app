import 'package:flutter/material.dart';
import 'package:kod_mira_app/data/network/models/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                height: 200,
                child: Card(
                  child: Column(children: [
                    Expanded(child: Image.network(product.urlImage)),
                    
                  ]),
                ),
              );
  }
}
