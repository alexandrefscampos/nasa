import 'package:dio/dio.dart';
import 'package:nasa/models/apod_model.dart';

class APODRepository {
  final Dio _dio = Dio();

  Future<List<APODModel>> getAPOD() async {
    final response = await _dio.get(
      'https://api.nasa.gov/planetary/apod?api_key=iNRFlRwvry6FNeZrLGrk7hf3nNHutE7lLDgymlFg&start_date=2024-03-01',
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
