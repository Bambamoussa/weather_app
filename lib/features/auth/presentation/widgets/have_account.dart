import 'package:flutter/material.dart';
import 'package:weather/core/styles/weather_text_style.dart';

class HaveAccount extends StatelessWidget {
  final String haveAccount;
  final String actionLabel;
  final Function() onPressed;
  const HaveAccount({
    Key? key,
    required this.haveAccount,
    required this.actionLabel,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          haveAccount,
          style: WeatherTextStyle.paragraphMedium700,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            actionLabel,
            style: WeatherTextStyle.paragraphMedium700,
          ),
        ),
      ],
    );
  }
}
