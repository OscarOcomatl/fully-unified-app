

import 'package:flutter/material.dart';
import 'package:fully_unified_app/infraestructure/models/models.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class TaskDescriptionScreen extends StatelessWidget {
   
  TaskDescriptionScreen({
    super.key
  });

  static const String name = 'task-description-screen.dart';
  
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add task'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: controller,
              autofocus: true,
              decoration: const InputDecoration(
                hintText: 'Title'
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: (){
                final title = controller.text;
                context.read<TaskProvider>().addTask(
                  Task(
                    title: title, 
                    isCompleted: false
                  )
                );
                controller.clear();
                context.pop();
              }, 
              child: const Text('Add')
            )
          ],
        ),
      ),
    );
  }
}