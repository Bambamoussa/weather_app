import 'package:hive/hive.dart';
import 'package:weather/features/weather/data/models/city_model.dart';

class CityAdapter extends TypeAdapter<CityModels> {
  @override
  final typeId = 1;

  @override
  CityModels read(BinaryReader reader) {
    return CityModels(
      id: reader.readString(),
      city: reader.readString(),
       
    );
  }

  @override
  void write(BinaryWriter writer, CityModels obj,) {
    writer.writeString(obj.id);
    writer.writeString(obj.city);
  }
}
