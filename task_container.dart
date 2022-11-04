import 'package:flutter/material.dart';

class TaskConatiner extends StatefulWidget {
  final String content;
  const TaskConatiner({
    super.key,
    required this.content,
  });

  @override
  State<TaskConatiner> createState() => _TaskConatinerState();
}

class _TaskConatinerState extends State<TaskConatiner> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 250,
              width: 250,
              margin: const EdgeInsets.symmetric(
                vertical: 150,
                horizontal: 20,
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 20,
                ),
                decoration: const BoxDecoration(
                  color: Colors.black12,
                ),
                child: Text(widget.content),
              ),
            ),
          ],
        ),
        Positioned(
          top: 0,
          child: Row(
            children: const [
              Icon(Icons.notification_add),
              Icon(Icons.notification_add),
              Icon(Icons.notification_add),
              Icon(Icons.notification_add),
            ],
          ),
        )
      ],
    );
  }
}
