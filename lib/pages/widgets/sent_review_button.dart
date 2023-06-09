import 'package:flutter/material.dart';

class SentReviewButton extends StatelessWidget {
  const SentReviewButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: const Color.fromRGBO(37, 65, 178, 0.2),
          side: const BorderSide(color: Color.fromRGBO(132, 177, 0, 1), width: 2),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 0,
        ),
        onPressed: () {},
        child: Center(
          child: Text(
            'Оставить отзыв',
            style: theme.textTheme.bodyLarge!.copyWith(
              color: const Color.fromRGBO(132, 177, 0, 1),
            ),
          ),
        ),
      ),
    );
  }
}
