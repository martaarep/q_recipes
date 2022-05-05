import 'package:flash/flash.dart';
import 'package:flutter/material.dart';

class FlashbarMessages {
  static void showFlashbarMessage(BuildContext context,
      {required String message,
      Duration duration = const Duration(seconds: 3)}) {
    showFlashMessage(context, message, false);
  }

  static void showErrorMessage(BuildContext context,
      {required String message,
      Duration duration = const Duration(seconds: 3)}) {
    showFlashMessage(context, message, true);
  }
}

Future<void> showFlashMessage(
    BuildContext context, String message, bool isErrorMessage) {
  return showFlash(
    duration: const Duration(seconds: 2),
    context: context,
    builder: (_, controller) => Flash(
      controller: controller,
      barrierDismissible: false,
      alignment: const Alignment(0, 0.8),
      borderRadius: BorderRadius.circular(12),
      backgroundColor: Colors.black87,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Text(
          isErrorMessage ? message.toUpperCase() : message,
          style: TextStyle(
            fontSize: 16,
            color: isErrorMessage ? Colors.red : Colors.white,
          ),
        ),
      ),
    ),
  );
}
