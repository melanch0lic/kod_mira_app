import 'package:flutter/material.dart';
import 'package:kod_mira_app/data/network/ferm_model.dart';
import 'package:kod_mira_app/pages/widgets/ferm_card.dart';

class FermasList extends StatelessWidget {
  const FermasList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        // padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        children: [
          FermCard(
              ferm: FermModel(
                  id: 0,
                  name: "ООО 'Пшено' ",
                  ownerName: 'Магомед Магомедов',
                  productCategories: [0, 2],
                  adress: 'Проспект Мира 292',
                  urlImage: 'image')),
        ],
      ),
    );
  }
}
