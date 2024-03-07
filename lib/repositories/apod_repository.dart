import 'package:dio/dio.dart';
import 'package:nasa/models/apod_model.dart';
import 'package:nasa/repositories/config_repository.dart';

class APODRepository {
  final Dio dio;
  final ConfigRepository configRepository;

  APODRepository({required this.dio, required this.configRepository});

  Future<List<APODModel>> getAPOD() async {
    final response = await dio.get(
      '/apod',
      queryParameters: {
        'api_key': configRepository.getApiKey(),
        'start_date': '2024-03-01',
      },
    );
    return (response.data as List)
        .map((e) => APODModel.fromJson(e as Map<String, dynamic>))
        .toList();
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
