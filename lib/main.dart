import 'package:chat_messaging_app/screens/auth/login_screen.dart';
import 'package:chat_messaging_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

//global object for accessing device screen size
late Size mq;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Conversa',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 5,
          iconTheme: IconThemeData(color: Color(0xFF241468), ),
          titleTextStyle: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Color(0xFF241468),
            ),
          backgroundColor: Color(0xFFCAEDFF),
        )
      ),
      home: const LoginScreen(),
    );
  }
}
