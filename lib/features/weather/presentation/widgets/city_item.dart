import 'package:flutter/material.dart';
import 'package:weather/core/styles/weather_colors.dart';
import 'package:weather/core/styles/weather_text_style.dart';

class CityItem extends StatelessWidget {
  final String city;
  final void Function() onTap;
  const CityItem({
    required this.city,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const CircleAvatar(
          child: Icon(
            Icons.location_city_outlined,
            color: WeatherColors.successSU500,
          ),
        ),
        title: Text(
          city,
          style: WeatherTextStyle.paragraphLarge400,
        ),
        onTap: onTap,
      ),
    );
  }
}
