import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kod_mira_app/providers/cart_provider.dart';

import 'components/cart_item.dart';

class CartPage extends ConsumerWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(cartProvider);
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Корзина',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
      body: products.isEmpty
          ? Center(
              child: Text(
              'Добавьте товары в корзину...',
              style: theme.textTheme.bodyMedium!.copyWith(color: Colors.black),
            ))
          : Padding(
              padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        formatProducts(products.toSet().length),
                        style: theme.textTheme.bodyMedium!.copyWith(color: theme.primaryColorDark, fontSize: 16),
                      ),
                      Consumer(
                        builder: (context, ref, child) => TextButton(
                            onPressed: () {
                              final theme = Theme.of(context);
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Center(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: theme.primaryColorLight,
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                      margin: const EdgeInsets.symmetric(horizontal: 22),
                                      padding: const EdgeInsets.all(17),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const SizedBox(width: double.infinity),
                                          Text('Вы уверены?',
                                              style: theme.textTheme.bodyMedium!.copyWith(fontSize: 16)),
                                          const SizedBox(height: 20),
                                          SizedBox(
                                            height: 30,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                TextButton(
                                                  onPressed: Navigator.of(context).pop,
                                                  child: Text('нет'.toUpperCase()),
                                                ),
                                                TextButton(
                                                  child: Text('да'.toUpperCase()),
                                                  onPressed: () {
                                                    ref.watch(cartProvider.notifier).state = ref
                                                        .read(cartProvider)
                                                        .where((element) => element.id == -1)
                                                        .toList();
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: Text(
                              'Очистить всё',
                              style: theme.textTheme.bodyMedium!
                                  .copyWith(color: const Color.fromRGBO(228, 59, 59, 1), fontSize: 16),
                            )),
                      )
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: products.length,
                        itemBuilder: ((context, index) => CartItem(product: products[index]))),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              formatProducts(products.toSet().length),
                              style: theme.textTheme.bodyMedium!.copyWith(color: theme.primaryColorDark, fontSize: 16),
                            ),
                            Text(
                              '${products.fold(0, (sum, item) => sum + item.price).toInt()}₽',
                              style: theme.textTheme.bodyMedium!.copyWith(color: Colors.black, fontSize: 20),
                            )
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            ref.watch(cartProvider.notifier).state =
                                ref.read(cartProvider).where((element) => element.id == -1).toList();
                            showDialog(
                                context: context,
                                builder: (context) => const AlertDialog(
                                      title: Text("Заказ отправлен"),
                                      titleTextStyle:
                                          TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
                                      backgroundColor: Color.fromRGBO(132, 177, 0, 1),
                                      shape:
                                          RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                                      content: Text(
                                        "Ожидайте потверждения",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ));
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(132, 177, 0, 1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Text(
                              'Оформить заказ',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ]),
                    ),
                  )
                ],
              ),
            ),
    );
  }

  String formatProducts(int count) {
    if (count % 10 == 1 && count % 100 != 11) {
      return '$count товар';
    } else if ([2, 3, 4].contains(count % 10) && ![12, 13, 14].contains(count % 100)) {
      return '$count товара';
    } else {
      return '$count товаров';
    }
  }
}
