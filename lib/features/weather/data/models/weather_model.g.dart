// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeathersModelsImpl _$$WeathersModelsImplFromJson(Map<String, dynamic> json) =>
    _$WeathersModelsImpl(
      name: json['name'] as String,
      mainWeathersModels:
          MainWeathersModels.fromJson(json['main'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeathersModelsImplToJson(
        _$WeathersModelsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'main': instance.mainWeathersModels,
    };
