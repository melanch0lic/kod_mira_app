import 'package:flutter/material.dart';
import 'package:kod_mira_app/pages/tabs_page/tabs_page.dart';

import 'theme/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Traveland',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const TabsPage(),
      // routerDelegate: appRouter.delegate(),
      // routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
