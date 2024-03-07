import 'package:flutter/material.dart';
import 'package:nasa/app/route_builder.dart';
import 'package:nasa/app/routes.dart';

class App extends StatelessWidget {
  final RouteBuilder routeBuilder;
  const App({super.key, required this.routeBuilder});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nasa APOD',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: Routes.home,
      routes: routeBuilder(),
    );
  }
}
