import 'package:flutter/material.dart';

import '../catalog_page/components/product_catalog_list.dart';
import '../widgets/filter_header.dart';

class FarmPage extends StatelessWidget {
  const FarmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Производители', style: TextStyle(color: Colors.black))),
      body: const Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            FilterHeader(),
            SizedBox(height: 15),
            Expanded(child: ProductCatalogList()),
          ],
        ),
      ),
    );
  }
}
