import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/category_tile_widget.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            // highlightColor: theme.cardColor,
            splashRadius: 15,
            icon: SvgPicture.asset('assets/images/back_arrow_icon.svg', color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Категории')),
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
