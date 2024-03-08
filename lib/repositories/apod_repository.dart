import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:nasa/core/boxes.dart';
import 'package:nasa/models/apod_model.dart';
import 'package:nasa/repositories/config_repository.dart';

class APODRepository {
  final Dio dio;
  final ConfigRepository configRepository;

  APODRepository({required this.dio, required this.configRepository});

  Future<List<APODModel>> getAPOD() async {
    try {
      final response = await dio.get(
        '/apod',
        queryParameters: {
          'api_key': configRepository.getApiKey(),
          'start_date': '2024-03-01',
        },
      );

      final apodList = (response.data as List)
          .map((e) => APODModel.fromJson(e as Map<String, dynamic>))
          .toList();

      apodsBox.clear();

      apodsBox.put('apods', response.data);

      return apodList;
    } catch (e) {
      final cachedAPODS = apodsBox.get('apods');
      List<APODModel> apodList = List.from(cachedAPODS.map((e) {
        Map<String, dynamic> castedValue = jsonDecode(jsonEncode(e));
        return APODModel.fromJson(castedValue);
      }));
      return apodList;
    }
  }

  // final APODRemoteDataSource remoteDataSource;

  // APODRepository({required this.remoteDataSource});

  // Future<APOD> getAPOD(DateTime date) async {
  //   try {
  //     final apod = await remoteDataSource.getAPOD(date);
  //     return apod;
  //   } on ServerException {
  //     throw ServerException();
  //   }
  // }
}
