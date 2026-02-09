import 'package:flutter/material.dart';
import 'package:yes_no_app2/config/theme/app_theme.dart';
import 'package:yes_no_app2/presentation/screens/chat/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Yes No App',
        theme: AppTheme(selectedColor: 1).theme(),
        home: const ChatScreen());
  }
}
