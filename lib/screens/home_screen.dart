import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedMenu = 0; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PopUp Menu'),
        actions: [
          PopupMenuButton(
            onSelected: (menu) {
              setState(() {
                _selectedMenu = menu;
              });
            },
            initialValue: _selectedMenu,
            itemBuilder: (context) {
              return const [
                PopupMenuItem(
                  value: 0,
                  child: Text('Item 1')
                  ),
                PopupMenuItem(
                  value: 1,
                  child: Text('Item 2')
                  ),
                PopupMenuItem(
                  value: 2,
                  child: Text('Item 3')
                  ),
                PopupMenuItem(
                  value: 3,
                  child: Text('Item 4')
                  ),      
              ];
            },
            ),
        ],
      ),
      body: const Center(
        child: Text(
          'Press PopUp Menu Button',
           style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w400,
           ),
          ),
      ),
    );
  }
}