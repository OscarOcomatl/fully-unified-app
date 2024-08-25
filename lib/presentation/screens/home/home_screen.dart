

import 'package:flutter/material.dart';
import 'package:fully_unified_app/presentation/views/views.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({
    super.key
  });
  
  static const String name = 'home-screen';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fully Unified App'),
      ),
      body: const HomeView(),
    );
  }
}