import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kod_mira_app/data/network/models/tender_model.dart';
import 'package:kod_mira_app/pages/product_detail_page/components/header_two_widget.dart';

import '../../navigation/router.gr.dart';
import '../widgets/review_rating_widget.dart';

class TenderDetailPage extends StatelessWidget {
  const TenderDetailPage({super.key, required this.tender});
  final TenderModel tender;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
          actions: const [Icon(Icons.favorite_outline), SizedBox(width: 15)],
          title: Text(
            '${tender.endResult} ${tender.numberSystem} ${tender.productName}',
            style: const TextStyle(color: Colors.black),
          )),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Тендер ${tender.endResult} ${tender.numberSystem} ${tender.productName}',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: const Color.fromRGBO(44, 44, 46, 1), fontSize: 22, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 10),
          Text(
            tender.farmName,
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: const Color.fromRGBO(44, 44, 46, 1), fontSize: 16, fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 30),
          LinearProgressIndicator(
            value: tender.currentResult / tender.endResult,
            color: const Color.fromRGBO(249, 171, 22, 1),
            backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
          ),
          const SizedBox(height: 10),
          Text(
            ' ${tender.currentResult} ${tender.numberSystem} собрано',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: const Color.fromRGBO(44, 44, 46, 1), fontSize: 16, fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 15),
          RichText(
              textDirection: TextDirection.ltr,
              text: TextSpan(
                text: '${tender.price.ceil()}₽',
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(color: const Color.fromRGBO(44, 44, 46, 1), fontSize: 16, fontWeight: FontWeight.w400),
                children: <TextSpan>[
                  TextSpan(
                    text: " / 1 ${tender.numberSystem}",
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        color: const Color.fromRGBO(142, 142, 147, 1), fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              )),
          const SizedBox(height: 15),
          Row(
            children: [
              SizedBox(
                height: 37,
                width: 170,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(132, 177, 0, 1),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    elevation: 0,
                  ),
                  child: Center(
                      child: Text(
                    'Предложить товар',
                    style: theme.textTheme.bodyMedium!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
                  )),
                ),
              ),
              const SizedBox(width: 10),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 37,
                  width: 139,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)), color: Color.fromRGBO(249, 171, 22, 1)),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    SvgPicture.asset('assets/images/chat.svg', color: Colors.white),
                    const SizedBox(width: 5),
                    Text(
                      'Написать',
                      style: theme.textTheme.bodyMedium!
                          .copyWith(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
                    )
                  ]),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          const HeaderTwoWidget(name: 'Описание'),
          const SizedBox(height: 15),
          Text(
              'Дачное некоммерческое товарищество “Родничок” желает закупить 80 кг свежих яблок зелёного сорта у небольших ферм Чеченской Республики.',
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(color: const Color.fromRGBO(44, 44, 46, 1), fontSize: 16, fontWeight: FontWeight.w400)),
          const SizedBox(height: 30),
          const HeaderTwoWidget(name: 'О заказчике'),
          const SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              context.router.push(const FarmDetailRoute());
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15), boxShadow: const [
                BoxShadow(
                  blurRadius: 20,
                  color: Color.fromRGBO(149, 157, 165, 0.25),
                )
              ]),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: SizedBox(
                    height: 194,
                    width: double.infinity,
                    child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: 'https://i.pinimg.com/564x/51/6d/47/516d476cd260005761afb17b4fa10acd.jpg',
                      progressIndicatorBuilder: (context, url, progress) => Center(
                        child: SpinKitSpinningLines(color: theme.indicatorColor),
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20, top: 15),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Text(tender.farmName,
                          style: theme.textTheme.displayLarge?.copyWith(
                            color: const Color.fromRGBO(44, 44, 46, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          )),
                      const SizedBox(height: 6),
                      const ReviewRatingWidgetDetails(
                        meanRating: 4.9,
                        ratingCount: 20,
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Icon(Icons.location_city),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'Пригородный район',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: const Color.fromRGBO(44, 44, 46, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]))
              ]),
            ),
          )
        ]),
      )),
    );
  }
}
