
import 'package:flutter/material.dart';
import 'package:fully_unified_app/config/menu/menu_items.dart';
import 'package:go_router/go_router.dart';

class CustomListTile extends StatelessWidget {

  const CustomListTile({
    required this.menuItem,
    super.key
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
            leading: Icon(menuItem.icon),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            title: Text(menuItem.title),
            subtitle: Text(menuItem.subtitle),
            onTap: () {
              context.push(menuItem.link);
            },
    );
    // return SizedBox(
    //   height: 200,
    //   child: ListView.builder(
    //     itemBuilder: (context, index) {
    //       return ListTile(
    //         leading: Icon(menuItem.icon),
    //         trailing: const Icon(Icons.arrow_forward_ios_rounded),
    //         title: Text(menuItem.title),
    //         subtitle: Text(menuItem.subtitle),
    //         onTap: () {
    //           context.push(menuItem.link);
    //         },
    //       );
    //     }
    //   ),
    // );
  }
}