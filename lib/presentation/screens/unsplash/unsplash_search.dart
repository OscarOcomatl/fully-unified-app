

import 'package:flutter/material.dart';

class UnsplashSearchScreen extends StatelessWidget {
   
  const UnsplashSearchScreen({Key? key}) : super(key: key);
  
  static const String name = 'unsplash-search-screen';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
         child: Text('UnsplashSearchScreen'),
      ),
    );
  }
}