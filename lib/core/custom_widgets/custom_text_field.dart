import 'package:flutter/material.dart';
import 'package:weather/core/styles/weather_colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final String? hintText;
  final String? Function(String?)? validator;
  final TextStyle? hintStyle;
  final bool? filled;
  final Color? fillColor;
  final Widget? label;
  final bool hasError;
  final BorderSide? borderSide;
  final bool passwordVisible;
  final Widget? suffixIcon;
  

  const CustomTextField({
    this.textEditingController,
    this.validator,
    this.hintText,
    this.hintStyle,
    this.filled,
    this.fillColor,
    this.label,
    this.hasError = false,
    this.borderSide,
    this.passwordVisible = false,
    this.suffixIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: textEditingController,
        validator: validator,
        obscureText: passwordVisible,
        decoration: InputDecoration(
          suffixIcon:suffixIcon ,
          isDense: true,
          hintText: hintText,
          hintStyle: hintStyle ??
              Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: WeatherColors.neutralN70,
                  ),
          filled: filled,
          fillColor: fillColor,
          label: label,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: hasError
                  ? Theme.of(context).colorScheme.error
                  : WeatherColors.borderGrey100,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: borderSide ??
                BorderSide(
                  color: hasError
                      ? Theme.of(context).colorScheme.error
                      : WeatherColors.borderPrimary,
                ),
            borderRadius: BorderRadius.circular(8),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.outline,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          errorMaxLines: 5,
        ),
      ),
    );
  }
}
