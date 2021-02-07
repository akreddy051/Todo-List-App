import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_app/models/tasks_data.dart';
class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle:taskData.tasks[index].name,
              isChecked:taskData.tasks[index].isDone,
              checkBoxState: (value){
                taskData.checkTask(taskData.tasks[index]);
              },
              longPressCallBack: (){
                taskData.removeTask(taskData.tasks[index]);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
