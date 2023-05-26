import 'package:flutter/material.dart';

class HeaderTwoWidget extends StatelessWidget {
  const HeaderTwoWidget({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Text(name,
        style: Theme.of(context)
            .textTheme
            .displayLarge!
            .copyWith(color: const Color.fromRGBO(44, 44, 46, 1), fontSize: 20));
  }
}
