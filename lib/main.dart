import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:weather/weather_app.dart';
import 'di/injection_container.dart' as di;
 

 Future<void>  main() async {
 WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
    apiKey: "AIzaSyCCtzV9i-ck-u0F0CRteG0c2F8XNvij8c4",
    appId: "1:682523459689:android:2758bbe2fd5290d4fc62f8",
    messagingSenderId: 'sendid',
    projectId: "weather-59ec7",
     
  )
  );
  di.init();
  runApp(const WeatherApp());
}

