// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apod_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$APODModelImpl _$$APODModelImplFromJson(Map<String, dynamic> json) =>
    _$APODModelImpl(
      date: DateTime.parse(json['date'] as String),
      explanation: json['explanation'] as String,
      hdurl: json['hdurl'] as String?,
      mediaType: $enumDecode(_$MediaTypeEnumMap, json['media_type']),
      serviceVersion: json['service_version'] as String,
      title: json['title'] as String,
      url: json['url'] as String,
      copyright: json['copyright'] as String?,
    );

Map<String, dynamic> _$$APODModelImplToJson(_$APODModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'explanation': instance.explanation,
      'hdurl': instance.hdurl,
      'media_type': _$MediaTypeEnumMap[instance.mediaType]!,
      'service_version': instance.serviceVersion,
      'title': instance.title,
      'url': instance.url,
      'copyright': instance.copyright,
    };

const _$MediaTypeEnumMap = {
  MediaType.image: 'image',
  MediaType.video: 'video',
};
