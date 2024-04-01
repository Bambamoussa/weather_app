import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:weather/features/weather/data/models/main_weather_adapter.dart';
import 'package:weather/features/weather/data/models/city_adapter.dart';
import 'package:weather/features/weather/data/models/weather_adapter.dart';
import 'package:weather/weather_app.dart';
import 'di/injection_container.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
          apiKey: "AIzaSyCCtzV9i-ck-u0F0CRteG0c2F8XNvij8c4",
          appId: "1:682523459689:android:2758bbe2fd5290d4fc62f8",
          messagingSenderId: 'sendid',
          projectId: "weather-59ec7",
        ))
      : Firebase.initializeApp();

  await Hive.initFlutter();
  Hive.registerAdapter(WeatherAdapter());
  Hive.registerAdapter(MainWeatherAdapter());
  di.init();

  Hive.registerAdapter(CityAdapter());
  runApp(const WeatherApp());
}
