import 'package:flutter/material.dart';
import 'package:weather/core/styles/weather_colors.dart';
import 'package:weather/core/styles/weather_text_style.dart';

class CustomButton extends StatelessWidget {
  final String mainButtonLabel;
  final Function() onPressed;

  const CustomButton({
    Key? key,
    required this.mainButtonLabel,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(25),
      child: MaterialButton(
        height: 50,
        color: WeatherColors.successSU500,
        minWidth: double.infinity,
        onPressed: onPressed,
        child: Text(
          mainButtonLabel,
          style: WeatherTextStyle.titleMedium700.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
