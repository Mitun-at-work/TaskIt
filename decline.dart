import 'package:flutter/material.dart';

class DeclineButton extends StatefulWidget {
  const DeclineButton({super.key});

  @override
  State<DeclineButton> createState() => _DeclineButtonState();
}

class _DeclineButtonState extends State<DeclineButton> {
  Color colour = Colors.black;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          colour = Colors.red;
        });
      },
      icon: Icon(
        Icons.cancel_outlined,
        color: colour,
      ),
    );
  }
}
