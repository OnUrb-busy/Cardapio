import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        canvasColor: const Color.fromARGB(255, 14, 17, 24),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 22, 27, 33),
          foregroundColor: Colors.white,
        ),
      ),
      title: 'Flutter Demo',
      home: const HomePage(),
    );
  }
}
