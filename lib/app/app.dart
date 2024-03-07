import 'package:flutter/material.dart';
import 'package:nasa/app/routes.dart';
import 'package:nasa/pages/pages.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const APODPage(),
      routes: {
        Routes.home: (context) => const APODPage(),
        Routes.apodDetails: (context) => const APODDetailsPage(),
      },
    );
  }
}
