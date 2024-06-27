import 'package:flutter/material.dart';
import 'package:jwero_sales_app/constants/strings.dart';
import 'package:jwero_sales_app/views/login_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: Strings.appName,
      home: LoginPage(),
    );
  }
}
