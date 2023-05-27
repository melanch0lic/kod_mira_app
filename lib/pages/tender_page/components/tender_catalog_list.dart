import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:kod_mira_app/pages/tender_page/components/tender_card.dart';

import '../../../providers/requests_provider.dart';

class TenderCatalogList extends ConsumerWidget {
  const TenderCatalogList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(getTenderByProvider);
    return data.when(
      loading: () => Center(
          child: SpinKitFadingCircle(
        color: Theme.of(context).indicatorColor,
      )),
      error: (error, stackTrace) => Text('Ошибка $error'),
      data: (data) => ListView.builder(
          itemCount: data.length,
          physics: const ScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: ((context, index) => TenderCard(tender: data[index]))),
    );
  }
}
