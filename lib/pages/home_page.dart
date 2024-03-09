import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int days = 31;
  final String month = "march";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          child: Text("a month of $month is having $days days"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
