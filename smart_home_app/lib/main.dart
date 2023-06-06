import 'package:flutter/material.dart';
import 'package:smart_home_app/screens/welcome.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/welcomeScreen',
    routes: {
      '/welcomeScreen':(context) => const WelcomeScreen()
    },
  ));
}
