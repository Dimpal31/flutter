import 'package:flutter/material.dart';

class Homepage extends StatefulWidget{
  String username;
  String password;

   Homepage({required this.username,required this.password});



  @override
  State<StatefulWidget> createState() => HomepageState();

}

class HomepageState extends State<Homepage>  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Homepage"),
      ),
      body: ListView(
          children: [
            Text(widget.username!),
            Text(widget.username!),
          ],
      ),
    );
  }
}