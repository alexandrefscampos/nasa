import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nasa/core/boxes.dart';
import 'package:nasa/core/injector.dart';
import 'package:nasa/models/apod_model.dart';

Future<void> main() async {
  await Hive.initFlutter();

  Hive.registerAdapter(APODModelAdapter());
  Hive.registerAdapter(MediaTypeAdapter());

  apodsBox = await Hive.openBox('apod');

  final getIt = GetIt.instance;

  await const AppInjector().inject();

  final app = getIt.get<Widget>();
  runApp(app);
}
