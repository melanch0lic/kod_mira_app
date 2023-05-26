import 'package:flutter/material.dart';

import '../../widgets/fake_review/review.dart';
import '../../widgets/fake_review/review_card.dart';

class ReviewInfoWidget extends StatelessWidget {
  const ReviewInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 42,
              height: 27,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: const Color.fromRGBO(132, 177, 0, 1),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10.5),
                child: Text(
                  '4.9',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 14,
                      ),
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              '2910 отзывов',
              style: theme.textTheme.bodyLarge!.copyWith(color: theme.primaryColorDark, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 180,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) => ReviewCard(
                    review: reviewList[0],
                  )),
        ),
      ],
    );
  }
}
