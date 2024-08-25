


import 'package:flutter/material.dart';
import 'package:fully_unified_app/config/menu/menu_items.dart';
import 'package:fully_unified_app/presentation/widgets/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: appMenuItems.length,
        itemBuilder: (context, index) {
          final menuItem = appMenuItems[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomListTile(menuItem: menuItem),
          );
        }
      ),
    );
  }
}