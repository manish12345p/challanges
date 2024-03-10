import 'package:challanges/hometab.dart';
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
      selectedTab = Container(
        color: Colors.grey,
      );
    }
     else if (selectedTabIndex == 2) {
      selectedTab = Container(
        color: Colors.purple,
      );
    }
     else if (selectedTabIndex == 3) {
      selectedTab = Container();
    } else if (selectedTabIndex == 4) {
      selectedTab = const HomeTab();
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
            icon: Icon(Icons.book),
            label: 'Book',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            label: 'Chart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Image',
          ),
        ],
      ),
      body: selectedTab,
    );
  }
}
