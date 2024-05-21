import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/change_os.dart';
import '../../provider/theme_provider.dart';
import 'components/add_contact _screen.dart';
import 'components/call_screen.dart';
import 'components/chats_screen.dart';
import 'components/setting_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          brightness: Brightness.light,
          colorScheme:
              ColorScheme.light(primary: Colors.blue, secondary: Colors.blue)),
      darkTheme: ThemeData.dark().copyWith(
          brightness: Brightness.light,
          colorScheme:
              ColorScheme.light(primary: Colors.blue, secondary: Colors.blue)),
      themeMode: Provider.of<Themeprovider>(context, listen: true).dark
          ? ThemeMode.dark
          : ThemeMode.light,
      home: DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
            appBar: AppBar(
              actions: [
                Switch(
                  value: Provider.of<Changeos>(context, listen: true).istrue,
                  onChanged: (value) {
                    Provider.of<Changeos>(context, listen: false).change(value);
                  },
                )
              ],
              title: Text("Platform Converter"),
              bottom: TabBar(onTap: (value) {}, tabs: const [
                Tab(
                  icon: Icon(Icons.person_add_alt),
                ),
                Tab(
                  text: "CHATS",
                ),
                Tab(
                  text: 'CALLS',
                ),
                Tab(text: 'SETTINGS'),
              ]),
            ),
            body: TabBarView(
              children: [
                AddContact(),
                ChatsScreen(),
                CallScreen(),
                SettingScreen(),
              ],
            )),
      ),
    );
  }
}
