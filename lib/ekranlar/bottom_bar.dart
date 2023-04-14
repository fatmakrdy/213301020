import 'package:bilet/ekranlar/profile_screen_dart.dart';
import 'package:bilet/ekranlar/search_screen.dart';
import 'package:bilet/ekranlar/ticket_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex=0;
  static final List <Widget>_widgetOptions=<Widget>[
    HomePage(),
    SearchScreen(),
    TicketScreen(),
    ProfileScreen(),

  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Center(
          child: Text(""),
      ),
      bottomNavigationBar: BottomNavigationBar(

        selectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor:  const Color(0xFF526480),
        items:  [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "Home"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "Search"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),label: "Ticket"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),label: "Profil"),
        ],

      ),
    );
  }
}
