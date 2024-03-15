import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_screen/presentation/navbar/navbar.dart';
import 'package:test_screen/utils/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColor.bgColor, // Status bar color
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: const NavBarScreen(),
    );
  }
}

