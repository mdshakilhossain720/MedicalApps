
import 'package:flutter/material.dart';
import 'package:medicalapps/screen/home_screen.dart';

import 'appoiment_screen.dart';
import 'message_screen.dart';
import 'scudualescreen.dart';
import 'setting_screen.dart';

class NabRouts extends StatefulWidget {
   NabRouts({super.key});

  @override
  State<NabRouts> createState() => _NabRoutsState();
}

class _NabRoutsState extends State<NabRouts> {
  int indexselect=0;

  final screen=[
    HomeScreen(),
    MessageScreen(),
    Scudualescreen(),
    SettingScreen(),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screen[indexselect],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
            selectedItemColor: Color(0xff7165D6),
            unselectedItemColor: Colors.black,
            selectedLabelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,

            ),
            currentIndex: indexselect,
            onTap: (index){
            setState(() {
              indexselect=index;
            });
            },

            items:[
              BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.chat_bubble),label: 'Message'),
              BottomNavigationBarItem(icon: Icon(Icons.calendar_view_day),label: 'Schudule'),
              BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'setting'),

        ]),
      ),
    );
  }
}
