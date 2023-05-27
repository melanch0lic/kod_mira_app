import 'package:flutter/material.dart';

import '../../../data/network/models/product_model.dart';

class InfoProductWidget extends StatelessWidget {
  const InfoProductWidget({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.name,
          style: Theme.of(context).textTheme.displayLarge!.copyWith(color: const Color.fromRGBO(44, 44, 46, 1)),
        ),
        const SizedBox(height: 10),
        Text('Категория: ${product.category}',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: const Color.fromRGBO(44, 44, 46, 1), fontSize: 16, fontWeight: FontWeight.w400)),
        const SizedBox(height: 15),
        RichText(
            textDirection: TextDirection.ltr,
            text: TextSpan(
              text: "${product.price.ceil()}₽",
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(color: const Color.fromRGBO(44, 44, 46, 1), fontSize: 20, fontWeight: FontWeight.w400),
              children: <TextSpan>[
                TextSpan(
                  text: "/ 1 кг",
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
              width: 138,
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
                  'В корзину',
                  style: theme.textTheme.bodyMedium!
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
                )),
              ),
            ),
            // const SizedBox(width: 10),
            /* InkWell(
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
            ),*/
          ],
        ),
      ],
    );
  }
}
