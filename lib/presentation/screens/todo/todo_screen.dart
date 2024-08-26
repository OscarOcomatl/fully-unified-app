

import 'package:flutter/material.dart';
import 'package:fully_unified_app/infraestructure/models/models.dart';
import 'package:fully_unified_app/presentation/providers/tasks/task_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class ToDoScreen extends StatelessWidget {
   
  const ToDoScreen({
    super.key
  });
  
  static const String name = 'todo-screen';

  TextStyle textStyle( Task task ){
    return TextStyle(
      decoration: task.isCompleted
        ? TextDecoration.lineThrough
        : TextDecoration.none,
      fontWeight: task.isCompleted
        ? FontWeight.bold
        : FontWeight.normal
    );
  }

  @override
  Widget build(BuildContext context) {

    final taskProvider = Provider.of<TaskProvider>(context);
    final tasks = taskProvider.tasks;
    final colors = Theme.of(context).colorScheme;

    return Scaffold(

      appBar: AppBar(
        title: const Text('ToDo List'),
        actions: [
          IconButton(
            onPressed: (){
              context.read<TaskProvider>().deleteAllTasks();
            }, 
            icon: Icon(Icons.delete_rounded, color: colors.primary)
          )
        ],
      ),

      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];
          return ListTile(
            title: Text(
              task.title,
              style: textStyle(task),
            ),
            trailing: Wrap(
              children: [
                Checkbox(
                  value: tasks[index].isCompleted, 
                  onChanged: (_){
                    context.read<TaskProvider>().checkTask(index);
                  }
                ),
                IconButton(
                  onPressed: (){
                    context.read<TaskProvider>().deleteTask(tasks[index]);
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