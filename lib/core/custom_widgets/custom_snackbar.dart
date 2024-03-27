import 'package:flutter/material.dart';

class CustomSnackbar {
  static void showSnackBar(var scaffoldKey, String message, Color snackbarColor) {
    scaffoldKey.currentState!.hideCurrentSnackBar();
    scaffoldKey.currentState!.showSnackBar(
      SnackBar(
        backgroundColor: snackbarColor ,
        content: Text(
          message,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        duration: const Duration(
          seconds: 2,
        ),
      ),
    );
  }
}
