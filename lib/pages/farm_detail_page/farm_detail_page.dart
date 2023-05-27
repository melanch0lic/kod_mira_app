import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kod_mira_app/pages/farm_detail_page/components/info_farm_widget.dart';

import '../product_detail_page/components/header_two_widget.dart';
import '../product_detail_page/components/review_info_widget.dart';
import '../widgets/show_row_header.dart';
import '../widgets/sent_review_button.dart';

class FarmDetailPage extends StatelessWidget {
  const FarmDetailPage({super.key});

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
            'Ферма "Герменчукский"',
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
                const InfoFarmWidget(),
                const SizedBox(height: 30),
                const HeaderTwoWidget(name: 'Описание'),
                const SizedBox(height: 15),
                Text(
                    'Общая площадь госхоза «Герменчукский» составляет 2701 га, в том числе: сельхозугодия, пашня и пастбища. Хозяйство в основном специализируется на производстве животноводческой и растениеводческой продукции...',
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        color: const Color.fromRGBO(44, 44, 46, 1), fontSize: 16, fontWeight: FontWeight.w400)),
                const SizedBox(height: 10),
                Text('Показать полностью...',
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        color: const Color.fromRGBO(132, 177, 0, 1), fontSize: 14, fontWeight: FontWeight.w400)),
                const SizedBox(height: 30),
                const HeaderTwoWidget(name: 'Товары от производителя'),
                const SizedBox(height: 20),
                ShowRowHeader(press: () {}),
                const SizedBox(height: 30),
                const Row(
                  children: [HeaderTwoWidget(name: 'Отзывы'), Spacer()],
                ),
                const SizedBox(height: 15),
                const ReviewInfoWidget(),
                ShowRowHeader(press: () {}),
                const SentReviewButton(),
                const SizedBox(height: 30),
                const HeaderTwoWidget(name: 'Похожие производители'),
                const SizedBox(height: 30),
                ShowRowHeader(press: () {}),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
