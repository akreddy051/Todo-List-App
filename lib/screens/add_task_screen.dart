import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_app/models/tasks_data.dart';
import 'package:todo_list_app/models/tasks.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        color: Color(0xff757575),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Add Task',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                TextField(onChanged: (value){
                  newTaskTitle=value;
                },
                  autofocus: true,
                  cursorHeight: 30.0,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30.0,
                ),
                FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                  color: Colors.lightBlueAccent,
                  onPressed: () {
                    if((newTaskTitle==null) ||(newTaskTitle=='') ){
                      Navigator.pop(context);
                    }
                    else{
                      Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
                      Navigator.pop(context);
                    }

                  },
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
