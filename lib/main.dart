import 'package:flutter/material.dart';
import 'package:yes_no_app2/config/theme/app_theme.dart';

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
      theme: AppTheme(selectedColor: 3).theme(),
      home: Scaffold(
        appBar: AppBar(title: const Text('Material App Bar')),
        body: Center(
          child: FilledButton.tonal(
              onPressed: () {}, child: const Text('Click Me')),
        ),
      ),
    );
  }
}
