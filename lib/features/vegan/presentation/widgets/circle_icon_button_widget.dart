import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  final double width;
  final double height;
  final Color iconColor;
  final Color buttonColor;
  final IconData icon;
  final VoidCallback? onPressed;
  const CircleIconButton({
    Key? key,
    required this.width,
    required this.height,
    required this.iconColor,
    required this.buttonColor,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: buttonColor,
              boxShadow: [
                BoxShadow(
                    color: buttonColor.withOpacity(0.2),
                    blurRadius: 10.0,
                    spreadRadius: 5.0)
              ]),
          child: Icon(
            icon,
            color: iconColor,
            size: 35.0,
          ),
        ),
      ),
    );
  }
}
