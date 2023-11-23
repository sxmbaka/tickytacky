import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickytacky/widgets/custom_text_field.dart';
import 'package:tickytacky/widgets/menu_button.dart';

class CreateRoomPage extends StatefulWidget {
  static String routeName = '/create-room';
  const CreateRoomPage({super.key});

  @override
  State<CreateRoomPage> createState() => _CreateRoomPageState();
}

class _CreateRoomPageState extends State<CreateRoomPage> {
  final TextEditingController _nameController = TextEditingController();

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
            MenuButton(
              onTap: () {},
              buttonText: 'Create Room',
            ),
            Gap(20),
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
