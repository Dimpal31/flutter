import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'DemoScreen.dart';
import 'HomeScreen.dart';
import 'LoginScreen.dart';
import 'RegisterScreen.dart';
import 'Settings.dart';

class SpleshScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>SpleshScreenState();
}

class SpleshScreenState extends State<SpleshScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 1), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Settings()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
   return Container(

     color:  context.theme.backgroundColor,
    // child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaCwO-i9-ml874NZeemcEkuudJo6drJW-kLnOTJwCRwA&s'),
     child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxi3L6ymTQ_q3WriBhcHCDUX6iRYhkN7hmrA&usqp=CAU'),
   );
  }
}