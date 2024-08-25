

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fully_unified_app/infraestructure/models/models.dart';
import 'package:fully_unified_app/infraestructure/models/task/save_task.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class ToDoScreen extends StatelessWidget {
   
  const ToDoScreen({
    super.key
  });
  
  static const String name = 'todo-screen';

  @override
  Widget build(BuildContext context) {

    final taskProvider = Provider.of<SaveTask>(context);
    final tasks = taskProvider.tasks;
    final colors = Theme.of(context).colorScheme;

    return Scaffold(

      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final taskitem = tasks[index];
          return ListTile(
            title: Text(
              taskitem.title,
              style: TextStyle(
                decoration: taskitem.isCompleted
                  ? TextDecoration.lineThrough
                  : TextDecoration.none
              ),
            ),
            trailing: Wrap(
              children: [
                Checkbox(
                  value: tasks[index].isCompleted, 
                  onChanged: (_){
                    context.read<SaveTask>().checkTask(index);
                  }
                ),
                IconButton(
                  onPressed: (){
                    context.read<SaveTask>().deleteTask(tasks[index]);
                  }, 
                  icon: Icon(Icons.delete_rounded, color: colors.primary,)
                )
              ]
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_rounded),
        onPressed: (){
          context.push('/task-description');
        }
      ),
    );
    
    // return Scaffold(

    //   body: Consumer<SaveTask>(
    //     builder: (context, task, child){
    //       return ListView.builder(
    //         itemCount: task.tasks.length,
    //         itemBuilder: (context, index) {
    //           final taskitem = task.tasks[index].title;
    //           return ListTile(
    //             title: Text(taskitem),
    //             trailing: Wrap(
    //               children: [
    //                 Checkbox(
    //                   value: task.tasks[index].isCompleted, 
    //                   onChanged: (_){
    //                     context.read<SaveTask>().checkTask(index);
    //                   }
    //                 )
    //               ]
    //             ),
    //           );
    //         },
    //       );
    //     }
    //   ),
    //   floatingActionButton: FloatingActionButton(
    //     child: const Icon(Icons.add_rounded),
    //     onPressed: (){
    //       context.push('/task-description');
    //     }
    //   ),
    // );
  }
}