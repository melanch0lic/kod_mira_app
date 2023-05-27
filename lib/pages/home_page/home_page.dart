import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kod_mira_app/navigation/router.gr.dart';
import 'package:kod_mira_app/pages/home_page/components/fermers_list.dart';

import '../catalog_page/components/product_catalog_list.dart';
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
          const StorySlider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                child: Text(
                  'Рекомендуем',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: const Color.fromRGBO(44, 44, 46, 1), fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: ProductCatalogList(),
              ),
              //const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ShowRowHeader(press: () {
                  //   context.router.push(const FarmRoute());
                }),
              ),
              const SizedBox(height: 10),
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
              const CategoryList(),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Производители',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: const Color.fromRGBO(44, 44, 46, 1), fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: FermasList(),
              ),
              ShowRowHeader(press: () {
                context.router.push(const FarmRoute());
              }),
            ],
          )
        ]),
      ),
    );
  }
}
