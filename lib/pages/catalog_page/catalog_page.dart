import 'package:flutter/material.dart';

import 'components/catalog_category_list.dart';
import 'components/product_catalog_list.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Каталог')),
      body: Column(children: [
        Center(
            child: Text(
          'Категории',
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                color: const Color.fromRGBO(44, 44, 46, 1),
              ),
        )),
        const CatalogCategoryList(),
        const Expanded(child: ProductCatalogList()),
      ]),
    );
  }
}
