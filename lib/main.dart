import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:nasa/core/injector.dart';

Future<void> main() async {
  final getIt = GetIt.instance;

  // Bloc.observer = SimpleBlocObserver();

  await const AppInjector().inject();

  final app = getIt.get<Widget>();
  runApp(app);
}
