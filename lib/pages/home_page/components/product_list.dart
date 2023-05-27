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
          count: 1,
          price: 89,
          discount: 10,
          adress: 'Пр.Мира',
          urlImage: 'https://i.pinimg.com/564x/47/b8/77/47b8774420b943533eb659805a943fde.jpg',
          category: 'Фермерские продукты'),
      ProductModel(
          id: 1,
          name: 'Томаты',
          description: 'Сочные',
          count: 1,
          price: 63,
          discount: 0,
          adress: 'Пр.Мира',
          urlImage: 'https://i.pinimg.com/564x/52/62/ae/5262ae3d39d5d898f99922c70c4f75ab.jpg',
          category: 'Фермерские продукты'),
      ProductModel(
          id: 2,
          name: 'Огурцы',
          description: 'Сочные',
          count: 1,
          price: 48,
          discount: 10,
          adress: 'Пр.Мира',
          urlImage: 'https://i.pinimg.com/564x/8b/00/9a/8b009a222873f96d51a3bc419a1ba41d.jpg',
          category: 'Фермерские продукты'),
      ProductModel(
          id: 3,
          name: 'Огурцы',
          description: 'Сочные',
          count: 1,
          price: 72,
          discount: 10,
          adress: 'Пр.Мира',
          urlImage: 'https://i.pinimg.com/564x/8b/00/9a/8b009a222873f96d51a3bc419a1ba41d.jpg',
          category: 'Фермерские продукты')
    ];
    return SizedBox(
        height: 480,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.only(top: 15),
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisSpacing: 15, crossAxisSpacing: 10, mainAxisExtent: 220),
                  itemBuilder: ((context, index) => ProductCard(product: products[index]))),
            ),
          ],
        ));
  }
}
