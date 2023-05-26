import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kod_mira_app/pages/home_page/components/product_list.dart';

import '../widgets/filter_header.dart';

class CategoriesDetailPage extends StatelessWidget {
  const CategoriesDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            // highlightColor: theme.cardColor,
            splashRadius: 15,
            icon: SvgPicture.asset('assets/images/back_arrow_icon.svg', color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Картофель')),
      body: const Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 3),
        child: SingleChildScrollView(
            // physics: BouncingScrollPhysics(),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [FilterHeader(), SizedBox(height: 15), ProductList()])),
      ),
    );
  }
}
