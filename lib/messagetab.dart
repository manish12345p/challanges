import 'package:flutter/material.dart';
class MessageTab extends StatefulWidget {
  const MessageTab({super.key});

  @override
  State<MessageTab> createState() => _MessageTabState();
}

class _MessageTabState extends State<MessageTab> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xffe6e9f0), Color(0xffeef1f5)
          ]),
        ),
        width: MediaQuery.of(context).size.width,
        child: const Center( child:Text('massatab'),),
      ),
    );
  }
}