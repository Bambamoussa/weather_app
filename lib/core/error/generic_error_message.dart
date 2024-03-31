import 'package:flutter/material.dart';
import 'package:weather/core/error/failure.dart';
import 'package:weather/core/styles/weather_text_style.dart';

class GenericErrorMessage extends StatelessWidget {
  final Failure failure;
  const GenericErrorMessage({required this.failure, super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(failure.appIconsFailure),
          Text(
            failure.errorMessageWidget(context) ?? '',
            style: WeatherTextStyle.titleLarge700,
          )
        ],
      ),
    );
  }
}
