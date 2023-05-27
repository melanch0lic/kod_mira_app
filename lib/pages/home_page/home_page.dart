import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kod_mira_app/navigation/router.gr.dart';
import 'package:kod_mira_app/pages/home_page/components/fermers_list.dart';
import 'package:kod_mira_app/pages/home_page/components/product_list.dart';

import '../widgets/show_row_header.dart';
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
          const Padding(
            padding: EdgeInsets.only(right: 5, left: 15),
            child: StorySlider(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Text(
                  'Рекомендуем',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: const Color.fromRGBO(44, 44, 46, 1), fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const ProductList(),
                //const SizedBox(height: 10),
                ShowRowHeader(press: () {
                  //   context.router.push(const FarmRoute());
                }),
                const SizedBox(height: 10),
                Text(
                  'Категории',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: const Color.fromRGBO(44, 44, 46, 1), fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 15),
                const CategoryList(),
                const SizedBox(height: 30),
                Text(
                  'Производители',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: const Color.fromRGBO(44, 44, 46, 1), fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 15),
                const FermasList(),
                ShowRowHeader(press: () {
                  context.router.push(const FarmRoute());
                }),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
