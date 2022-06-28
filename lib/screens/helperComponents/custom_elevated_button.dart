import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.textColor,
    required this.buttonColor,
    required this.circular,
    required this.onPressed,
    required this.verticalPadding,
  }) : super(key: key);
  final String text;
  final Color textColor;
  final Color buttonColor;
  final double circular;
  final VoidCallback onPressed;
  final double verticalPadding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(circular),
        ),
        elevation: 0,
        primary: buttonColor,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
        ),
      ),
    );
  }
}
