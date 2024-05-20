import 'package:flutter/material.dart';

import 'add_contact _screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        initialIndex: 1,
        child:Scaffold(
      appBar: AppBar(
        title: Text("Platform Converter"),
        bottom: TabBar(
          onTap: (value) {
            },
            tabs: const [
              Tab(
                icon: Icon(Icons.person_add_alt),
              ),
              Tab(
                text: "CHATS",
              ),Tab(
                text: 'CALLS',
              ),
              Tab(text: 'SETTINGS'),

            ]),

      ),
      body: TabBarView(
        children: [
          AddContact(),
          AddContact(),
          AddContact(),
          AddContact(),

        ],
      )),
    );
  }
}
