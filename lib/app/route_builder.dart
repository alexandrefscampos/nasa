import 'package:flutter/material.dart';
import 'package:nasa/app/routes.dart';

class RouteBuilder {
  final StatefulWidget apodPage;
  final StatelessWidget apodDetailsPage;

  const RouteBuilder({
    required this.apodPage,
    required this.apodDetailsPage,
  });

  Map<String, Widget Function(BuildContext)> call() {
    return {
      Routes.home: (context) => apodPage,
      Routes.apodDetails: (context) => apodDetailsPage,
    };
  }
}
