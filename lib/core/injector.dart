import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:nasa/app/app.dart';
import 'package:nasa/app/route_builder.dart';
import 'package:nasa/core/constants.dart';
import 'package:nasa/pages/pages.dart';
import 'package:nasa/repositories/apod_repository.dart';
import 'package:nasa/repositories/config_repository.dart';

class AppInjector {
  const AppInjector();

  Future<void> inject() async {
    final getIt = GetIt.instance;
    await dotenv.load(fileName: ".env");

    getIt
      ..registerFactory<Dio>((() => Dio(
            BaseOptions(
              baseUrl: Constants.baseUrl,
            ),
          )))
      ..registerFactory<ConfigRepository>(
        () => ConfigRepository(
          dotEnv: dotenv,
        ),
      )
      ..registerFactory<APODRepository>(
        () => APODRepository(
          dio: getIt<Dio>(),
          configRepository: getIt<ConfigRepository>(),
        ),
      )
      ..registerFactory<StatefulWidget>(
        () => APODPage(
          apodRepository: getIt.get(),
        ),
      )
      ..registerFactory<StatelessWidget>(
        () => const APODDetailsPage(),
      )
      ..registerFactory<RouteBuilder>(() => RouteBuilder(
            apodPage: getIt.get(),
            apodDetailsPage: getIt.get(),
          ))
      ..registerFactory<Widget>(() => App(routeBuilder: getIt.get()));
  }
}
