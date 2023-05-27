import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kod_mira_app/data/network/models/tender_model.dart';
import 'package:kod_mira_app/navigation/router.gr.dart';

class TenderCard extends StatelessWidget {
  const TenderCard({super.key, required this.tender});
  final TenderModel tender;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        context.router.push(TenderDetailRoute(tender: tender));
      },
      child: Container(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 20),
        margin: const EdgeInsets.only(bottom: 15),
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('${tender.endResult} ${tender.numberSystem} ${tender.productName}',
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(color: const Color.fromRGBO(44, 44, 46, 1), fontSize: 16, fontWeight: FontWeight.w600)),
          const SizedBox(height: 5),
          Text(tender.farmName,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(44, 44, 46, 1),
                  )),
          const SizedBox(height: 10),
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
          LinearProgressIndicator(
            value: tender.currentResult / tender.endResult,
            color: const Color.fromRGBO(249, 171, 22, 1),
            backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
          ),
          const SizedBox(height: 10),
          Text(
            '${tender.currentResult} ${tender.numberSystem} собрано',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: const Color.fromRGBO(44, 44, 46, 1), fontSize: 14, fontWeight: FontWeight.w400),
          )
        ]),
      ),
    );
  }
}
