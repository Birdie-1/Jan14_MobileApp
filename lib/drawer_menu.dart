import 'package:flutter/material.dart';
import 'package:new_chapter8/group_menage.dart';

Widget drawerMenu(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        // Drawer header
        DrawerHeader(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 89, 25, 240),
          ),
          child: const Text(
            'Menu',
            style: TextStyle(
              color: Color.fromARGB(255, 108, 45, 45),
              fontSize: 24,
              fontFamily: 'item',
            ),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text('Home'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> GroupManage()));// งานที่ทำเมื่อคลิกที่เมนูนี้
          },
        ),
        ListTile(
          leading: const Icon(Icons.group),
          title: const Text('Group Data'),
          onTap: () {
            // งานที่ทำเมื่อคลิกที่เมนูนี้
          },
        ),
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text('Contact Data'),
          onTap: () {
            // งานที่ทำเมื่อคลิกที่เมนูนี้
          },
        ),
        ListTile(
          leading: const Icon(Icons.help),
          title: const Text('Help'),
          onTap: () {
            // งานที่ทำเมื่อคลิกที่เมนูนี้
          },
        ),
      ],
    ),
  );
}
