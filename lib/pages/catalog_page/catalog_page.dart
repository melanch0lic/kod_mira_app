import 'package:flutter/material.dart';

import '../widgets/filter_header.dart';
import 'components/catalog_category_list.dart';
import 'components/product_catalog_list.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Каталог', style: TextStyle(color: Colors.black))),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            'Категории',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: const Color.fromRGBO(44, 44, 46, 1), fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(height: 15),
        const CatalogCategoryList(),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            'Выбранная категория',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: const Color.fromRGBO(44, 44, 46, 1), fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(height: 15),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: FilterHeader(),
        ),
        const SizedBox(height: 15),
        const Expanded(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: ProductCatalogList(),
        )),
      ]),
    );
  }
}
