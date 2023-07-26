import 'package:flutter/material.dart';

class Homepage2 extends StatefulWidget{

 // String username;
 // String password;

 // Homepage2({required this.username,required this.password});

  Homepage2();
  @override
  State<StatefulWidget> createState()=>  Homepage2State();


}

class Homepage2State extends State<Homepage2> {

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as List;
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      body: ListView(
        children: [
        //  Text(widget.username!),
        //  Text(widget.password!),

         Text(args.toString()),
        ],
      ),
    );

  }
}