import 'package:flutter/material.dart';

import 'features/dashboard/dashboard_page.dart';

class StreamApp extends StatelessWidget {
  const StreamApp({
    super.key,
    required this.titleApp,
  });
  final String titleApp;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: titleApp,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xff0F0F17),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Color(0xff0F0F17),
        ),
      ),
      home: const DashBoardPage(),
    );
  }
}
