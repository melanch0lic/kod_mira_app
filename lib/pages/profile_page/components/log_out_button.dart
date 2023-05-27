import 'package:flutter/material.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(254, 250, 224, 1),
          foregroundColor: const Color.fromRGBO(132, 155, 0, 1),
          side: const BorderSide(
            width: 2,
            color: Color.fromRGBO(132, 177, 0, 1),
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 0,
        ),
        onPressed: () {},
        child: Center(
          child: Text(
            'Выйти',
            style: theme.textTheme.bodyLarge!
                .copyWith(color: const Color.fromRGBO(132, 177, 0, 1), fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
