import 'package:flutter/material.dart';

class IncButton extends StatelessWidget {
  final String inputText;
  final void Function() onPressed;
  final Color color;

  // ignore: use_key_in_widget_constructors
  const IncButton(
      {required this.inputText, required this.onPressed, required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        //Adding green color to the button and white color to the text
        style: ElevatedButton.styleFrom(
          primary: color,
          onPrimary: Colors.white,
        ),
        //Action to happen when button is pressed
        onPressed: onPressed,
        //Text of the button
        child: Text(
          inputText,
        ));
  }
}
