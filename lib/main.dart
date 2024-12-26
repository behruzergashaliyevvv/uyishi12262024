import 'package:flutter/material.dart';
import 'package:uy_ishi_12262024/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // const konstruktor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App UI',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: HomeScreen(), // Ilova asosiy ekrani
    );
  }
}
