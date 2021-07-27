import 'package:flutter/material.dart';
import 'package:todoey_flutter/modules/task.dart';
import 'package:todoey_flutter/modules/tasks_data.dart';
import 'package:provider/provider.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  TaskTile(this.task);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.name,
        style: task.isDone
            ? TextStyle(decoration: TextDecoration.lineThrough)
            : TextStyle(decoration: TextDecoration.none),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: task.isDone,
          onChanged: (v) {
            task.toggleDone();
            Provider.of<TaskData>(context, listen: false).toggleDone();
          }),
    );
  }
}
