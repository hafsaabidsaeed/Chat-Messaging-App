import 'package:chat_messaging_app/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(CupertinoIcons.home),
        title: const Text('Welcome to Conversa'),
      ),
      body: Stack(
        children: [
          Positioned(
              top: mq.height * 0.15,
              left: mq.width * 0.25,
              width: mq.width * 0.5,
              child: Image.asset('assets/images/messages.png')),
          Positioned(
            bottom: mq.height * 0.15,
            left: mq.width * 0.075,
            width: mq.width * 0.85,
            height: mq.height * 0.08,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: lightPink,
                shape: const StadiumBorder(),
                elevation: 1,
              ),
              onPressed: () {},
              icon: Image.asset('assets/images/google.png', height:mq.height*0.05 ,),
              label: const Text(
                'Sign in with Google',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Color(0xFF241468)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
