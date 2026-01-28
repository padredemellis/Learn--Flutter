import 'package:flutter/material.dart';
import 'package:hello_flutter/presentation/screen/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(debugShowCheckedModeBanner: false,
    home: ProfileCardPage());
  }
}
