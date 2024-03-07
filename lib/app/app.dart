import 'package:flutter/material.dart';
import 'package:nasa/app/routes.dart';
import 'package:nasa/pages/pages.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nasa APOD',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        Routes.home: (context) => const APODPage(),
        Routes.apodDetails: (context) => const APODDetailsPage(),
      },
    );
  }
}
