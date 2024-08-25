import 'package:flutter/material.dart';
import 'package:fully_unified_app/config/router/app_router.dart';
import 'package:fully_unified_app/infraestructure/models/task/save_task.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SaveTask()
        )
      ],
      child: const MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      // theme: ,
    );
  }
}