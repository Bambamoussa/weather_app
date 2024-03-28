import 'package:flutter/material.dart';
import 'package:weather/core/styles/weather_colors.dart';

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
        color: WeatherColors.secondaryC500,
        minWidth: double.infinity,
        onPressed: onPressed,
        child: Text(
          mainButtonLabel,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
