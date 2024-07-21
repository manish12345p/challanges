import 'package:challanges/Youtab.dart';
import 'package:challanges/booktab.dart';
import 'package:challanges/hometab.dart';
import 'package:challanges/notificationtab.dart';
import 'package:challanges/profiletab.dart';
import 'package:flutter/material.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int selectedTabIndex = 0;
  Widget selectedTab = const HomeTab();

  onTabChange(int tabValue) {
    setState(() {
      selectedTabIndex = tabValue;
    });
    refreshUI();
   
  }

  refreshUI(){
     if (selectedTabIndex == 0) {
      selectedTab = const HomeTab();
    } 
    else if (selectedTabIndex == 1) {
      selectedTab = const Booksec();
    }
     else if (selectedTabIndex == 2) {
      selectedTab = const YouTab() ;
    }
     else if (selectedTabIndex == 3) {
      selectedTab = const ProfileTab();
    } else if (selectedTabIndex == 4) {
      selectedTab = const NotificationTab();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedTabIndex,
        unselectedItemColor: Colors.green,
        selectedItemColor: Colors.pink,
        backgroundColor: Colors.yellow,
        onTap: (int index) {
          onTabChange(index);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_stories_rounded),
            label: 'Book',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'You',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_awesome_motion_rounded),
            label: 'Profiles',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_awesome_outlined),
            label: 'notification',
          ),
        ],
      ),
      body: selectedTab,
    );
  }
}
