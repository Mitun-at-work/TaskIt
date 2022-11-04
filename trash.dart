import 'package:flutter/material.dart';

class TrashButton extends StatefulWidget {
  const TrashButton({super.key});

  @override
  State<TrashButton> createState() => _TrashButtonState();
}

class _TrashButtonState extends State<TrashButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.delete,
      ),
    );
  }
}
