import 'package:flutter/material.dart';

class ImageTab extends StatefulWidget {
  const ImageTab({super.key});

  @override
  State<ImageTab> createState() => _ImageTabState();
}

class _ImageTabState extends State<ImageTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xffe6e9f0), Color(0xffeef1f5)]),
            image: DecorationImage(
                image: AssetImage('assets/images/room.jpg'),
                fit: BoxFit.cover)),
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width - 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(24)),
              child: Text('Coming Soon', style: TextStyle(
                fontSize: MediaQuery.of(context).size.height/100*4,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange
              ))),
        ),
      ),
    );
  }
}
