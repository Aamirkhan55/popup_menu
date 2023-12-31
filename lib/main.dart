import 'package:flutter/material.dart';
import 'package:popup_menu/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'PopUp Menu', 
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.amberAccent,
      ),  
        useMaterial3: true,
      ),
     home: const HomeScreen(),
    );
  }
}