

import 'package:flutter/material.dart';

class MenuItem {

  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,  
    required this.subtitle,    
    required this.link,    
    required this.icon,  
  });
}


const appMenuItems = <MenuItem> [

  MenuItem(
    title: 'Baksheesh', 
    subtitle: 'Calculate the baksheesh', 
    link: '/baksheesh', 
    icon: Icons.money_rounded
  ),
  MenuItem(
    title: 'ToDo List', 
    subtitle: 'ToDo list manager', 
    link: '/todo', 
    icon: Icons.list_rounded
  ),
  MenuItem(
    title: 'UnsplashSearch',
    subtitle: 'Search for a Unsplash image',
    link: '/search',
    icon: Icons.search_rounded
  )
];



