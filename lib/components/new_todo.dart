import 'package:flutter/material.dart';
import 'package:demo_2/bean/todo.dart';

class NewTodoDialog extends StatelessWidget {
  final controller = TextEditingController();

  NewTodoDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('New todo'),
      content: TextField(
        controller: controller,
        autofocus: true,
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: const Text('Add'),
          onPressed: () {
            final todo = Todo(title: controller.value.text);
            controller.clear();
            Navigator.of(context).pop(todo);
          },
        )
      ],
    );
  }
}
