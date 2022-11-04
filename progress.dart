import 'package:flutter/material.dart';
import 'package:task_it/return_task.dart';

class ProgressIcon extends StatefulWidget {
  const ProgressIcon({super.key});

  @override
  State<ProgressIcon> createState() => _ProgressIconState();
}

class _ProgressIconState extends State<ProgressIcon> {
  Color colour = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextButton(
        onPressed: () {
          setState(() {
            colour = Colors.green;
          });
        },
        child: Text(
          "${returnData(true)} ⭐",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
