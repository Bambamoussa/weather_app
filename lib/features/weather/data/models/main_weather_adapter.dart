import 'package:hive_flutter/hive_flutter.dart';
import 'package:weather/features/weather/data/models/main_weather_model.dart';

class MainWeatherAdapter extends TypeAdapter<MainWeathersModels> {
  @override
  final typeId = 3;

  @override
  MainWeathersModels read(BinaryReader reader) {
    return MainWeathersModels(
      temperature: reader.readDouble(),
      feelsLike: reader.readDouble(),
      humidity: reader.readDouble(),
      pressure: reader.readDouble(),
    );
  }

  @override
  void write(
    BinaryWriter writer,
    MainWeathersModels obj,
  ) {
    writer.writeDouble(obj.temperature);
    writer.writeDouble(obj.pressure);
    writer.writeDouble(obj.feelsLike);
    writer.writeDouble(
      obj.humidity,
    );
  }
}
