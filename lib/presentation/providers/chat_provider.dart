import 'package:flutter/material.dart';
import 'package:yes_no_app2/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messagelist = [
    Message(text: 'Hola amor!', fromWho: FromWho.me),
    Message(text: 'Ya regresaste del trabajo?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {}
}
