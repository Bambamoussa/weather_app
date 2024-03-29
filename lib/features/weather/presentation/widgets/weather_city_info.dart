import 'package:flutter/material.dart';

class WeatherCityInfo extends StatelessWidget {
  final String weatherInfo;
  final String typeInfo;
  const WeatherCityInfo({
    required this.typeInfo,
    required this.weatherInfo,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            "$typeInfo : $weatherInfo",
          ),
        ],
      ),
    );
  }
}
