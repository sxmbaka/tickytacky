import 'package:flutter/material.dart';
import 'package:tickytacky/pages/game_page.dart';
import 'package:tickytacky/resources/socket_client.dart';

class SocektMethods {
  final _socketClient = SocketClient.instance.socket!;

  void createRoom(String nickname) {
    if (nickname.isNotEmpty) {
      _socketClient.emit('createRoom', {
        'nickname': nickname,
      });
    }
  }

  void roomCreatedListener(BuildContext context) {
    _socketClient.on('roomCreated', (room) {
      debugPrint('roomCreated: $room');
      Navigator.pushNamed(context, GamePage.routeName);
    });
  }
}
