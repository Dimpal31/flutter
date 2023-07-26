import 'package:flutter/material.dart';

class Homepage3 extends StatefulWidget{
  String? username;
  String? password;

 Homepage3({required this.username , required this.password });
 // Homepage3();

  @override
  State<StatefulWidget> createState()=>Homepage3State();

}

class Homepage3State extends State<Homepage3> {
  @override
  Widget build(BuildContext context) {

    Map<String,dynamic>? args=ModalRoute.of(context)?.settings.arguments==null?null:ModalRoute.of(context)?.settings.arguments as Map<String,dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: Text("HomeScreen3"),
      ),
      body: ListView(
        children: [
          Text("This Data pass from arguments using pushname"),
          args==null?Text(''):Text(args!.toString()),
        ],
      ),
    );
  }
}