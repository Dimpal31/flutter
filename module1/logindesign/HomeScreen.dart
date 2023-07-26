import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  String? username;
  String? password;
  HomeScreen({required this.username , required this.password });

  @override
  State<StatefulWidget> createState()=>HomeScreenState();


}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //fetch data when pass from constructor
    // var args=ModalRoute.of(context)?.settings.arguments;


    //fetch data when pass from constructor
    Map<String,dynamic>? args=ModalRoute.of(context)?.settings.arguments==null?null: ModalRoute.of(context)?.settings.arguments as Map<String,dynamic>;
   return Scaffold(
     drawer: Drawer(),
     appBar: AppBar(
       title: Text("HomeScreen"),
     ),
     body: ListView(
       children: [
         Text("This Data pass from constructor"),
         Text(widget.username!),
         Divider(),
         Text("This Data pass from arguments"),
         // Text(argss.runtimeType==List?argss.toString():""),
         Divider(),

      //   Text("This Data pass from arguments using pushname"),
         args==null?Text(''):Text(args!.toString()),
       ],
     ),
   );
  }
}