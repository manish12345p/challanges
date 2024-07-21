import 'package:flutter/material.dart';
class PieTab extends StatefulWidget {
  const PieTab({super.key});

  @override
  State<PieTab> createState() => _PieTabState();
}

class _PieTabState extends State<PieTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xffe6e9f0), Color(0xffeef1f5)
          ]),
        ),
        width: MediaQuery.of(context).size.width,
        child: const Center( child:Text('PieTab'),),
      ),
    );
  }
}