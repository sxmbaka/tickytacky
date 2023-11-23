import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickytacky/pages/create_room_page.dart';
import 'package:tickytacky/pages/join_room_page.dart';
import 'package:tickytacky/responsive/responsive.dart';
import 'package:tickytacky/widgets/menu_button.dart';

class MainMenuPage extends StatelessWidget {
  static String routeName = '/main-menu';
  const MainMenuPage({super.key});

  void createRoom(BuildContext context) {
    Navigator.pushNamed(context, CreateRoomPage.routeName);
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(context, JoinRoomPage.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MenuButton(
                onTap: () => createRoom(context),
                buttonText: 'Create Room',
              ),
              const Gap(20),
              MenuButton(
                onTap: () => joinRoom(context),
                buttonText: 'Join Room',
              ),
              const Gap(20),
              // MenuButton(
              //   onTap: () {},
              //   buttonText: 'Set Username',
              // ),
              // const Gap(20),
              MenuButton(
                onTap: () {},
                buttonText: 'Exit',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
