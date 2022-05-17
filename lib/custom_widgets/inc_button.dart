import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function() onPressed;
  final bool reset;

  // ignore: use_key_in_widget_constructors
  const CustomButton({required this.onPressed, required this.reset});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        //Adding green color to the button and white color to the text
        style: ElevatedButton.styleFrom(
          primary: reset ? Colors.red : Colors.green,
          onPrimary: Colors.white,
        ),
        //Action to happen when button is pressed
        onPressed: onPressed,
        //Text of the button
        child: reset ? const Text('START OVER') : const Text('BUTTON'));
  }
}
