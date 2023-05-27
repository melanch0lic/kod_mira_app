import 'package:flutter/material.dart';
import 'package:kod_mira_app/pages/tender_page/components/tender_catalog_list.dart';
import 'package:kod_mira_app/pages/widgets/filter_header.dart';

class TenderPage extends StatelessWidget {
  const TenderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Тендеры', style: TextStyle(color: Colors.black))),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                FilterHeader(),
                SizedBox(height: 15),
                TenderCatalogList(),
              ],
            ),
          ),
        ));
  }
}
