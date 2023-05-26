import 'package:flutter/material.dart';
import 'package:kod_mira_app/pages/home_page/home_page.dart';

import '../widgets/bottom_navbar.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const [HomePage()],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
