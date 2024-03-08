import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'apod_model.freezed.dart';
part 'apod_model.g.dart';

@freezed
@HiveType(typeId: 0)
sealed class APODModel with _$APODModel {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  const factory APODModel({
    @HiveField(0) required DateTime date,
    @HiveField(1) required String explanation,
    @HiveField(2) String? hdurl,
    @HiveField(3) required MediaType mediaType,
    @HiveField(4) required String serviceVersion,
    @HiveField(5) required String title,
    @HiveField(6) required String url,
    @HiveField(7) String? copyright,
  }) = _APODModel;

  factory APODModel.fromJson(Map<String, dynamic> json) =>
      _$APODModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}

@HiveType(typeId: 1)
enum MediaType {
  @HiveField(0)
  image,
  @HiveField(1)
  video
}
