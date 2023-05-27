import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kod_mira_app/pages/widgets/show_row_header.dart';
import 'package:kod_mira_app/pages/widgets/sent_review_button.dart';

import '../../data/network/models/product_model.dart';
import '../home_page/components/fermers_list.dart';
import 'components/header_two_widget.dart';
import 'components/info_product_widget.dart';
import 'components/review_info_widget.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: const [Icon(Icons.favorite_outline), SizedBox(width: 15)],
          title: Text(
            product.name,
            style: const TextStyle(color: Colors.black),
          )),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CachedNetworkImage(
            imageUrl: 'https://i.pinimg.com/564x/b1/83/c6/b183c61cf7fccce8b036a158f4f58e63.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200,
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InfoProductWidget(product: product),
                const SizedBox(height: 30),
                const HeaderTwoWidget(name: 'Описание'),
                const SizedBox(height: 15),
                Text(
                    'Картофель — многолетнее травянистое растение из семейства пасленовых. Его плоды ядовиты, в пищу употребляют только клубни — видоизмененные подземные побеги. То, что мы называем картофелем, содержит....',
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        color: const Color.fromRGBO(44, 44, 46, 1), fontSize: 16, fontWeight: FontWeight.w400)),
                const SizedBox(height: 10),
                Text('Показать полностью...',
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        color: const Color.fromRGBO(132, 177, 0, 1), fontSize: 14, fontWeight: FontWeight.w400)),
                const SizedBox(height: 30),
                const Row(
                  children: [
                    HeaderTwoWidget(name: 'Отзывы'),
                    Spacer(),
                  ],
                ),
                const SizedBox(height: 15),
                const ReviewInfoWidget(),
                ShowRowHeader(press: () {}),
                const SentReviewButton(),
                const SizedBox(height: 30),
                const HeaderTwoWidget(name: 'Производитель'),
                const SizedBox(height: 15),
                const FermasList(),
                //const SizedBox(height: 20),
                ShowRowHeader(press: () {}),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
