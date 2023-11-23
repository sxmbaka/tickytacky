import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickytacky/widgets/custom_text_field.dart';
import 'package:tickytacky/widgets/menu_button.dart';

class JoinRoomPage extends StatefulWidget {
  static String routeName = '/join-room';
  const JoinRoomPage({super.key});

  @override
  State<JoinRoomPage> createState() => _JoinRoomPageState();
}

class _JoinRoomPageState extends State<JoinRoomPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _roomCodeController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _nameController.dispose();
  }

  void mainMenu(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomInputField(
              hintText: 'Enter Nickname',
              controller: _nameController,
            ),
            Gap(20),
            CustomInputField(
              hintText: 'Enter Room Code',
              controller: _roomCodeController,
            ),
            Gap(40),
            MenuButton(
              onTap: () {},
              buttonText: 'Join Room',
            ),
            const Gap(20),
            MenuButton(
              onTap: () => mainMenu(context),
              buttonText: 'Go Back',
            ),
          ],
        ),
      ),
    );
  }
}
