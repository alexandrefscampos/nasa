// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apod_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

APODModel _$APODModelFromJson(Map<String, dynamic> json) {
  return _APODModel.fromJson(json);
}

/// @nodoc
mixin _$APODModel {
  DateTime get date => throw _privateConstructorUsedError;
  String get explanation => throw _privateConstructorUsedError;
  String? get hdurl => throw _privateConstructorUsedError;
  MediaType get mediaType => throw _privateConstructorUsedError;
  String get serviceVersion => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String? get copyright => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $APODModelCopyWith<APODModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $APODModelCopyWith<$Res> {
  factory $APODModelCopyWith(APODModel value, $Res Function(APODModel) then) =
      _$APODModelCopyWithImpl<$Res, APODModel>;
  @useResult
  $Res call(
      {DateTime date,
      String explanation,
      String? hdurl,
      MediaType mediaType,
      String serviceVersion,
      String title,
      String url,
      String? copyright});
}

/// @nodoc
class _$APODModelCopyWithImpl<$Res, $Val extends APODModel>
    implements $APODModelCopyWith<$Res> {
  _$APODModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? explanation = null,
    Object? hdurl = freezed,
    Object? mediaType = null,
    Object? serviceVersion = null,
    Object? title = null,
    Object? url = null,
    Object? copyright = freezed,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      hdurl: freezed == hdurl
          ? _value.hdurl
          : hdurl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as MediaType,
      serviceVersion: null == serviceVersion
          ? _value.serviceVersion
          : serviceVersion // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$APODModelImplCopyWith<$Res>
    implements $APODModelCopyWith<$Res> {
  factory _$$APODModelImplCopyWith(
          _$APODModelImpl value, $Res Function(_$APODModelImpl) then) =
      __$$APODModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      String explanation,
      String? hdurl,
      MediaType mediaType,
      String serviceVersion,
      String title,
      String url,
      String? copyright});
}

/// @nodoc
class __$$APODModelImplCopyWithImpl<$Res>
    extends _$APODModelCopyWithImpl<$Res, _$APODModelImpl>
    implements _$$APODModelImplCopyWith<$Res> {
  __$$APODModelImplCopyWithImpl(
      _$APODModelImpl _value, $Res Function(_$APODModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? explanation = null,
    Object? hdurl = freezed,
    Object? mediaType = null,
    Object? serviceVersion = null,
    Object? title = null,
    Object? url = null,
    Object? copyright = freezed,
  }) {
    return _then(_$APODModelImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      hdurl: freezed == hdurl
          ? _value.hdurl
          : hdurl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as MediaType,
      serviceVersion: null == serviceVersion
          ? _value.serviceVersion
          : serviceVersion // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$APODModelImpl implements _APODModel {
  const _$APODModelImpl(
      {required this.date,
      required this.explanation,
      this.hdurl,
      required this.mediaType,
      required this.serviceVersion,
      required this.title,
      required this.url,
      this.copyright});

  factory _$APODModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$APODModelImplFromJson(json);

  @override
  final DateTime date;
  @override
  final String explanation;
  @override
  final String? hdurl;
  @override
  final MediaType mediaType;
  @override
  final String serviceVersion;
  @override
  final String title;
  @override
  final String url;
  @override
  final String? copyright;

  @override
  String toString() {
    return 'APODModel(date: $date, explanation: $explanation, hdurl: $hdurl, mediaType: $mediaType, serviceVersion: $serviceVersion, title: $title, url: $url, copyright: $copyright)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$APODModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            (identical(other.hdurl, hdurl) || other.hdurl == hdurl) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.serviceVersion, serviceVersion) ||
                other.serviceVersion == serviceVersion) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, explanation, hdurl,
      mediaType, serviceVersion, title, url, copyright);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$APODModelImplCopyWith<_$APODModelImpl> get copyWith =>
      __$$APODModelImplCopyWithImpl<_$APODModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$APODModelImplToJson(
      this,
    );
  }
}

abstract class _APODModel implements APODModel {
  const factory _APODModel(
      {required final DateTime date,
      required final String explanation,
      final String? hdurl,
      required final MediaType mediaType,
      required final String serviceVersion,
      required final String title,
      required final String url,
      final String? copyright}) = _$APODModelImpl;

  factory _APODModel.fromJson(Map<String, dynamic> json) =
      _$APODModelImpl.fromJson;

  @override
  DateTime get date;
  @override
  String get explanation;
  @override
  String? get hdurl;
  @override
  MediaType get mediaType;
  @override
  String get serviceVersion;
  @override
  String get title;
  @override
  String get url;
  @override
  String? get copyright;
  @override
  @JsonKey(ignore: true)
  _$$APODModelImplCopyWith<_$APODModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
