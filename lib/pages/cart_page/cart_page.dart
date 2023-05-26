import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kod_mira_app/pages/home_page/components/product_card.dart';
import 'package:kod_mira_app/providers/cart_provider.dart';

class CartPage extends ConsumerWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(cartProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Корзина',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black),
        ),
      ),
      body: ListView.builder(
          itemCount: products.length, itemBuilder: ((context, index) => ProductCard(product: products[index]))),
    );
  }
}