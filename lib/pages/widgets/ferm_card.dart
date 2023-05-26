import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:kod_mira_app/pages/widgets/review_rating_widget.dart';

import '../../data/network/ferm_model.dart';

class FermCard extends StatelessWidget {
  final FermModel ferm;
  const FermCard({super.key, required this.ferm});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15), boxShadow: const [
          BoxShadow(
            blurRadius: 24,
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
                Text(ferm.name,
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
                        '${ferm.adress} ',
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
    );
  }
}
