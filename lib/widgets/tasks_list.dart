import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/modules/tasks_data.dart';
import 'package:provider/provider.dart';
//import 'package:todoey_flutter/modules/task.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(taskData.tasks[index]);
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
