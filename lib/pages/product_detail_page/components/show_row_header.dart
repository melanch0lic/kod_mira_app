import 'package:flutter/material.dart';

class ShowRowHeader extends StatelessWidget {
  const ShowRowHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Align(
        alignment: Alignment.centerRight,
        child: TextButton(
          onPressed: () {},
          child: Text('Показать больше',
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(color: const Color.fromRGBO(132, 177, 0, 1), fontSize: 14, fontWeight: FontWeight.w400)),
        ),
      ),
    );
  }
}
