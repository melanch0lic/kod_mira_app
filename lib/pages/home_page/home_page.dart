import 'package:flutter/material.dart';
import 'package:kod_mira_app/pages/home_page/components/fermers_list.dart';
import 'package:kod_mira_app/pages/home_page/components/product_list.dart';

import 'components/category_list.dart';
import 'components/story_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 40,
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5), borderRadius: BorderRadius.circular(10)),
          child: const TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Поиск',
                prefixIcon: Icon(Icons.search),
                contentPadding: EdgeInsets.only(bottom: 13)),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const StorySlider(),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              'Рекомендуем',
              style: Theme.of(context).textTheme.displayLarge!.copyWith(color: const Color.fromRGBO(44, 44, 46, 1)),
            ),
          ),
          const ProductList(),
          Center(
              child: Text(
            'Категории',
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  color: const Color.fromRGBO(44, 44, 46, 1),
                ),
          )),
          const CategoryList(),
          Center(
              child: Text(
            'Производители',
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  color: const Color.fromRGBO(44, 44, 46, 1),
                ),
          )),
          const FermasList(),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Align(
              alignment: Alignment.centerRight,
              child: TextButton(onPressed: () {}, child: const Text('Показать больше')),
            ),
          )
        ]),
      ),
    );
  }
}
