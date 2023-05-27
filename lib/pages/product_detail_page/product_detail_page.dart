import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kod_mira_app/pages/widgets/show_row_header.dart';
import 'package:kod_mira_app/pages/widgets/sent_review_button.dart';

import 'components/header_two_widget.dart';
import 'components/info_product_widget.dart';
import 'components/review_info_widget.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            // highlightColor: theme.cardColor,
            splashRadius: 15,
            icon: SvgPicture.asset('assets/images/back_arrow_icon.svg', color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: const [Icon(Icons.favorite), SizedBox(width: 15)],
          title: const Text(
            'Картофель',
            style: TextStyle(color: Colors.black),
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
                const InfoProductWidget(),
                const SizedBox(height: 30),
                const HeaderTwoWidget(name: 'Описание'),
                const SizedBox(height: 15),
                Text(
                    'Вы погуляете по центру Владикавказа и найдете отголоски XIX века, воплощенные в старинных гостиницах, купеческих домах, бывших типографиях и концернах. Услышите об особенностях архитектуры и о знаменитых людях, которые здесь родились и жили. Познакомитесь с...',
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
                const SizedBox(height: 30),
                const HeaderTwoWidget(name: 'Еще от производителя'),
                const SizedBox(height: 20),
                ShowRowHeader(press: () {}),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
