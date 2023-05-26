import 'package:flutter/material.dart';

import 'components/category_tile_widget.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Категории',
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black),
      )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(children: [
            CategoryTileWidget(
              image: 'assets/images/fructs.png',
              name: 'Овощи, фрукты',
              press: () {},
            ),
            const SizedBox(height: 15),
            CategoryTileWidget(
              image: 'assets/images/milk.png',
              name: 'Молочная продукция',
              press: () {},
            ),
            const SizedBox(height: 15),
            CategoryTileWidget(
              image: 'assets/images/meat.png',
              name: 'Мясо, птица',
              press: () {},
            ),
            const SizedBox(height: 15),
            CategoryTileWidget(
              image: 'assets/images/zerno.png',
              name: 'Крупы, злаки',
              press: () {},
            ),
            const SizedBox(height: 15),
            CategoryTileWidget(
              image: 'assets/images/fish.png',
              name: 'Рыба, морепродукты',
              press: () {},
            ),
            const SizedBox(height: 15),
            CategoryTileWidget(
              image: 'assets/images/tea.png',
              name: 'Чай, кофе',
              press: () {},
            ),
            const SizedBox(height: 15),
            CategoryTileWidget(
              image: 'assets/images/nuts.png',
              name: 'Орехи',
              press: () {},
            ),
          ]),
        ),
      ),
    );
  }
}
