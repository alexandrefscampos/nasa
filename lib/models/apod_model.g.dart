// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apod_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class APODModelAdapter extends TypeAdapter<APODModel> {
  @override
  final int typeId = 0;

  @override
  APODModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return APODModel(
      date: fields[0] as DateTime,
      explanation: fields[1] as String,
      hdurl: fields[2] as String?,
      mediaType: fields[3] as MediaType,
      serviceVersion: fields[4] as String,
      title: fields[5] as String,
      url: fields[6] as String,
      copyright: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, APODModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.date)
      ..writeByte(1)
      ..write(obj.explanation)
      ..writeByte(2)
      ..write(obj.hdurl)
      ..writeByte(3)
      ..write(obj.mediaType)
      ..writeByte(4)
      ..write(obj.serviceVersion)
      ..writeByte(5)
      ..write(obj.title)
      ..writeByte(6)
      ..write(obj.url)
      ..writeByte(7)
      ..write(obj.copyright);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is APODModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MediaTypeAdapter extends TypeAdapter<MediaType> {
  @override
  final int typeId = 1;

  @override
  MediaType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return MediaType.image;
      case 1:
        return MediaType.video;
      default:
        return MediaType.image;
    }
  }

  @override
  void write(BinaryWriter writer, MediaType obj) {
    switch (obj) {
      case MediaType.image:
        writer.writeByte(0);
        break;
      case MediaType.video:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MediaTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
