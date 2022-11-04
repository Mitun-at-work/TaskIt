import 'package:flutter/material.dart';
import 'package:task_it/add_task.dart';
import 'package:task_it/return_task.dart';
import 'package:task_it/progress.dart';
import 'package:task_it/task_container.dart';

void main() => runApp(
      const MaterialApp(
        home: Home(),
        debugShowCheckedModeBanner: false,
      ),
    );

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddTask(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 30,
                horizontal: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Hello, Mitun Suresh 👋",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ProgressIcon(),
                ],
              ),
            ),
            Container(
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
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  TaskConatiner(content: "content"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
