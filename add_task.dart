import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AddTaskHome(),
    );
  }
}

class AddTaskHome extends StatelessWidget {
  const AddTaskHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.done_outline_rounded),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(25),
                margin: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 50,
            ),
            padding: const EdgeInsets.all(25),
            child: TextField(
              onSubmitted: ((value) {
                print("object");
              }),
            ),
          )
        ],
      ),
    );
  }
}
