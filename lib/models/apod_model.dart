import 'package:freezed_annotation/freezed_annotation.dart';

part 'apod_model.freezed.dart';
part 'apod_model.g.dart';

@freezed
sealed class APODModel with _$APODModel {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  const factory APODModel({
    required DateTime date,
    required String explanation,
    String? hdurl,
    required MediaType mediaType,
    required String serviceVersion,
    required String title,
    required String url,
    String? copyright,
  }) = _APODModel;

  factory APODModel.fromJson(Map<String, dynamic> json) =>
      _$APODModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}

enum MediaType { image, video }
