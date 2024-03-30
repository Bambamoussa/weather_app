import 'package:hive/hive.dart';
import 'package:weather/features/weather/data/models/user_model.dart';

class UserAdapter extends TypeAdapter<UserModels> {
  @override
  final typeId = 1;

  @override
  UserModels read(BinaryReader reader) {
    return UserModels(
      id: reader.readString(),
      city: reader.readString(),
       
    );
  }

  @override
  void write(BinaryWriter writer, UserModels obj,) {
    writer.writeString(obj.id);
    writer.writeString(obj.city);
  }
}
