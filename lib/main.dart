import 'package:flutter/material.dart';
import 'package:hostelbooking/pages/register_page.dart';

void main() => runApp(const HostelApp());

class HostelApp extends StatelessWidget {
  const HostelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hostel App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.teal,
      ),
      home: const ResgistrationPage(),
    );
  }
}
