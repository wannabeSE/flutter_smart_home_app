import 'package:flutter/material.dart';
import 'package:smart_home_app/screens/components/navbar.dart';

class Room extends StatelessWidget {
  const Room({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Text('smart'),
        ),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}