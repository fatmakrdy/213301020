
import 'package:bilet/ekranlar/home_screen.dart';
import 'package:bilet/ekranlar/profile_screen_dart.dart';
import 'package:bilet/ekranlar/search_screen.dart';
import 'package:bilet/ekranlar/ticket_screen.dart';
import 'package:bilet/ekranlar/welcome_page.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex=0;
  List pages=[
    HomeScreen(),
    SearchScreen(),
    TicketScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text(""),
        backgroundColor: Color(0xFFF4F6FD)
      ),
      body: pages[selectedIndex],
      bottomNavigationBar: NavigationBar(
        backgroundColor: Color(0xFFF4F6FD),
        height: 50,
        destinations: const [
          NavigationDestination(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              label: "Home"),
          NavigationDestination(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              label: "Search"),
          NavigationDestination(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            label: "Ticket"),
          NavigationDestination(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
             label: "Profil"),
        ],
          selectedIndex:selectedIndex,
        onDestinationSelected: (value){
          setState(() {
            selectedIndex=value;
          });
        }
      ),
    );
  }
}
