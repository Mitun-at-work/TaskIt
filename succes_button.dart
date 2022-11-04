import 'package:flutter/material.dart';

class SuccessButton extends StatefulWidget {
  const SuccessButton({super.key});

  @override
  State<SuccessButton> createState() => _SuccessButtonState();
}

class _SuccessButtonState extends State<SuccessButton> {
  Color colour = Colors.black;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          colour = Colors.green;
        });
      },
      icon: Icon(
        Icons.done,
        color: colour,
      ),
    );
  }
}
