import 'package:flutter/material.dart';
import 'package:task_it/return_task.dart';

class TotalTasks extends StatelessWidget {
  const TotalTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 25,
      ),
      child: Row(
        children: [
          Text(
            "Total Tasks  ${returnData(false)}",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
