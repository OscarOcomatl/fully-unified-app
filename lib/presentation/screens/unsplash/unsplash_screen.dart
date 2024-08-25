import 'package:flutter/material.dart';

class UnsplashScreen extends StatelessWidget {
   
  const UnsplashScreen({Key? key}) : super(key: key);
  
  static const String name = 'unsplash-screen';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
         child: Text('UnsplashScreen'),
      ),
    );
  }
}