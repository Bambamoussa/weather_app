import 'package:hive_flutter/hive_flutter.dart';
import 'package:weather/features/weather/data/models/main_weather_model.dart';
import 'package:weather/features/weather/data/models/weather_model.dart';

class WeatherAdapter extends TypeAdapter<WeathersModels> {
  @override
  final typeId = 2;

  @override
  WeathersModels read(BinaryReader reader) {
    return WeathersModels(
      name: reader.readString(),
      mainWeathersModels: reader.read(),
    );
  }

  @override
  void write(
    BinaryWriter writer,
    WeathersModels obj,
  ) {
    writer.writeString(obj.name);
    writer.write<MainWeathersModels>(
      obj.mainWeathersModels,
    );
  }
}
