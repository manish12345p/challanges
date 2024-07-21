import 'package:challanges/rootpage.dart';

import 'Login_signin.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  SharedPreferences? storage;
  initSharedPreferences()async{
    storage=await SharedPreferences.getInstance();
      // ignore: avoid_print
      print('===========================================================');
    // ignore: avoid_print
    print(storage?.getBool('islogged'));
    // ignore: avoid_print
    print('===========================================================');
    setState(() {
      
    });
    return;
  }
  @override
  void initState() {
    initSharedPreferences();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gaming App',
      theme: ThemeData(
        colorSchemeSeed: Colors.white,
      ),
      darkTheme: ThemeData(colorSchemeSeed: Colors.black,
      useMaterial3: true,
      brightness: Brightness.dark,
      ),
      home:storage?.getBool('islogged')==true
      ?const  RootPage()
      : const SLPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}