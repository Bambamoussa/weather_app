import 'package:flutter/material.dart';
import 'package:weather/core/styles/weather_text_style.dart';

class AuthHeaderLabel extends StatelessWidget {
  final String headerLabel;
  const AuthHeaderLabel({
    Key? key,
    required this.headerLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            headerLabel,
            style: WeatherTextStyle.paragraphLarge600,
          ),
          const Icon(
            Icons.home_work,
          ),
        ],
      ),
    );
  }
}
