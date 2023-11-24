import 'package:flutter/material.dart';
import 'package:tickytacky/pages/create_room_page.dart';
import 'package:tickytacky/pages/game_page.dart';
import 'package:tickytacky/pages/join_room_page.dart';
import 'package:tickytacky/pages/main_menu_page.dart';
import 'package:tickytacky/utils/colors.dart';

void main() {
  runApp(const TickyTacky());
}

class TickyTacky extends StatelessWidget {
  const TickyTacky({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TickyTacky',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: uranianBlue,
      ),
      routes: {
        MainMenuPage.routeName: (context) => MainMenuPage(),
        CreateRoomPage.routeName: (context) => CreateRoomPage(),
        JoinRoomPage.routeName: (context) => JoinRoomPage(),
        GamePage.routeName: (context) => GamePage(),
      },
      initialRoute: MainMenuPage.routeName,
    );
  }
}
