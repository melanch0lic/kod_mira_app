import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InfoFarmWidget extends StatelessWidget {
  const InfoFarmWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Ферма "Герменчукский"',
          style: Theme.of(context).textTheme.displayLarge!.copyWith(color: const Color.fromRGBO(44, 44, 46, 1)),
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(width: 2, color: const Color.fromRGBO(249, 171, 22, 1))),
              child: Text('Мясо',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: const Color.fromRGBO(44, 44, 46, 1), fontSize: 16, fontWeight: FontWeight.w400)),
            ),
            const SizedBox(width: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(width: 2, color: const Color.fromRGBO(249, 171, 22, 1))),
              child: Text('Молоко',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: const Color.fromRGBO(44, 44, 46, 1), fontSize: 16, fontWeight: FontWeight.w400)),
            ),
            const SizedBox(width: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(width: 2, color: const Color.fromRGBO(249, 171, 22, 1))),
              child: Text('Овощи',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: const Color.fromRGBO(44, 44, 46, 1), fontSize: 16, fontWeight: FontWeight.w400)),
            )
          ],
        ),
        const SizedBox(height: 15),
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
    );
  }
}
