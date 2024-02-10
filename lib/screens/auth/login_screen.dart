import 'package:chat_messaging_app/constants/colors.dart';
import 'package:chat_messaging_app/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isAnimate = false;
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(milliseconds: 500 ), () {
      setState(() {
        _isAnimate = true;
      });
    } );
  }
  
  @override
  Widget build(BuildContext context) {
    //initializing media query
    mq = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Conversa'),
      ),
      body: Stack(
        children: [
          AnimatedPositioned(
              top: mq.height * 0.15,
              right: _isAnimate ? mq.width*0.25 : -mq.width*0.5 ,
              width: mq.width * 0.5,
              duration: const Duration(seconds: 1),
              child: Image.asset('assets/images/messages.png')),
          Positioned(
            bottom: mq.height * 0.15,
            left: mq.width * 0.075,
             width: mq.width * 0.85,
            height: mq.height * 0.08,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: CupertinoColors.lightBackgroundGray ,
                shape: const StadiumBorder(),
                elevation: 1,
              ),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const HomeScreen()) );
              },
              icon: Image.asset('assets/images/google.png', height:mq.height*0.05 ,),
              label: RichText(
              text:const TextSpan(
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Color(0xFF241468)
                ),
                children: [
                  TextSpan(
                    text: 'Login with '
                  ),
                  TextSpan(
                    text: 'Google',
                    style:  TextStyle(fontWeight: FontWeight.w500)
                  )
                ]
              ),
            ),
          ),
          ),
        ],
      ),
    );
  }
}
