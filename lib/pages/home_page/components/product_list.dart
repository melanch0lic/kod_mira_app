import 'package:flutter/material.dart';
import 'package:kod_mira_app/data/network/models/product_model.dart';

import 'product_card.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      ProductModel(
          id: 0,
          name: 'Яблоки',
          description: 'Сочные',
          price: 89,
          discount: 10,
          adress: 'Пр.Мира',
          urlImage: 'https://i.pinimg.com/564x/47/b8/77/47b8774420b943533eb659805a943fde.jpg',
          category: 'Фермерские продукты')
    ];
    return SizedBox(
        height: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.only(top: 10, right: 8, left: 8),
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisSpacing: 6, crossAxisSpacing: 6, mainAxisExtent: 220),
                  itemBuilder: ((context, index) => ProductCard(product: products[0]))),
            ),
            TextButton(onPressed: () {}, child: const Text('Показать больше'))
          ],
        ));
  }
}
