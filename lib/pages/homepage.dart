import 'package:flutter/material.dart';
import 'package:rex/pages/home.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
  
}

class _HomepageState extends State<Homepage> {
  @override
  int selected = 0;

  void onSelected(int index){
    setState(() {
      selected = index;
    });  
  }
  final List<Widget> pages = [
    Home(),
  ]
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Homepage'),),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected,
        onTap: onSelected,
        backgroundColor: Colors.grey,
        items: [
        BottomNavigationBarItem(icon: Icon
        (Icons.home ),label: 'Home'),
         BottomNavigationBarItem(icon: Icon
        (Icons.settings),label: 'Settings'),
         BottomNavigationBarItem(icon: Icon
        (Icons.person),label: 'profile')
      ]),


      body: Center(
        child: Text('My HomePage',),
      ),
    );
  }
}