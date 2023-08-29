import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hungerz_restaurant/LoginScreen.dart';

import 'ThemeLightDark.dart';
import 'ThemeService.dart';

class Settings extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => SettingsState();
}

class SettingsState extends State<Settings> {

  bool light = true;
  String? language="";

  @override
  void initState() {
    // TODO: implement initState
      super.initState();
      // ThemeService().;
    setState(() {
      light=Get.isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {

 return Scaffold(
   appBar: AppBar(
     backgroundColor: Colors.white,
    // centerTitle: true,
     elevation: 0,
     title: Text("Settings",style: TextStyle(color:Colors.black),),
    /* leading: IconButton(
       onPressed: (){},
       icon: Icon(Icons.add,color: Colors.black,),
     ),*/

   ),
   body: Column(
     children: [
       Expanded(
         child: ListView(
           physics: AlwaysScrollableScrollPhysics(),
           children: [
             SizedBox(height: 25,),
             Container(
               padding: EdgeInsets.only(left: 20.0),
               child: Align(
                   alignment: Alignment.topLeft,
                   child: Text("Select Mode",style: TextStyle(color:Colors.grey,fontSize: 16),)),
             ),
             SizedBox(height: 30,),
               Row(
                 children: [
                   Row(
                     children: [
                       Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Container(
                             padding: EdgeInsets.only(left: 20.0),
                             child: Align(
                                 alignment: Alignment.topLeft,
                                 child: Text("Dark Mode                   ",
                                   style: TextStyle(color:Colors.black,fontSize: 18,fontWeight: FontWeight.w600),)),
                           ),
                          /* Container(
                             child: Align(
                                 alignment: Alignment.topLeft,
                                 child: Text("Dark Mode",style: TextStyle(color:Colors.black,fontSize: 18,fontWeight: FontWeight.w800),)),
                           ),*/
                           SizedBox(height: 05,),
                           Container(
                             padding: EdgeInsets.only(left: 20.0),
                             child: Align(
                                 alignment: Alignment.topLeft,
                                 child: Text("Experience an exciting light Mode",style: TextStyle(color:Colors.grey,fontSize: 12),)),
                           ),
                           SizedBox(height: 30,),
                         ],
                       ),
                     ],
                   ),
                   Container(
                     padding: EdgeInsets.only(left: 90.0,bottom: 30),
                     child: Switch(
                         value: light,
                         thumbColor: const MaterialStatePropertyAll<Color>(Colors.white54),
                         onChanged:(bool value){
                           print(value);
                           //Get.changeTheme(Get.isDarkMode?ThemeData.light():ThemeData.dark());
                           Get.changeTheme(light?ThemeLightDark.light:ThemeLightDark.dark);
                       setState(() {
                         light=value;
                       });

                     } ),
                   ),
                ]
               ),

             Container(
               padding: EdgeInsets.only(left: 20.0),
               child: Align(
                   alignment: Alignment.topLeft,
                   child: Text("Select Language",style: TextStyle(color:Colors.grey,fontSize: 16),)),
             ),
             SizedBox(height: 30,),
             Container(
               padding: EdgeInsets.only(left: 20.0),
               child: Column(
                 children: [
                   Row(
                     children: [
                       Radio(
                         activeColor:Colors.orange,
                         // title:  Text("Male"),
                         value:"English",
                         groupValue: "$language",
                         onChanged: (value){
                           setState(() {
                             language=value.toString();

                           });
                         },
                       ),SizedBox(width: 10,),Text("English",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18))
                     ],
                   ),
                   SizedBox(height: 10,),
                   Row(
                     children: [
                       Radio(
                           activeColor:Colors.orange,
                           value: "Portugal",
                           groupValue: "$language",
                           onChanged: (value){
                             setState(() {
                               language=value.toString();
                             });
                           }),SizedBox(width: 10,),Text("Portugal",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18)),
                     ],
                   ),
                   SizedBox(height: 10,),
                   Row(
                     children: [
                       Radio(
                           activeColor:Colors.orange,
                           value: "Francais",
                           groupValue: "$language",
                           onChanged: (value){
                             setState(() {
                               language=value.toString();
                             });
                           }),SizedBox(width: 10,),Text("Francais",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18)),
                     ],
                   ),
                   SizedBox(height: 10,),
                   Row(
                     children: [
                       Radio(
                           activeColor:Colors.orange,
                           value: "Bahasa Indonesia",
                           groupValue: "$language",
                           onChanged: (value){
                             setState(() {
                               language=value.toString();
                             });
                           }),SizedBox(width: 10,),Text("Bahasa Indonesia",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18)),
                     ],
                   ),
                   SizedBox(height: 10,),
                   Row(
                     children: [
                       Radio(
                           activeColor:Colors.orange,
                           value: "Espanol",
                           groupValue: "$language",
                           onChanged: (value){
                             setState(() {
                               language=value.toString();
                             });
                           }),SizedBox(width: 10,),Text("Espanol",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18)),
                     ],
                   ),
                   SizedBox(height: 10,),
                   Row(
                     children: [
                       Radio(
                           activeColor:Colors.orange,
                           value: "italiano",
                           groupValue: "$language",
                           onChanged: (value){
                             setState(() {
                               language=value.toString();
                             });
                           }),SizedBox(width: 10,),Text("italiano",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18)),
                     ],
                   ),
                   SizedBox(height: 10,),
                   Row(
                     children: [
                       Radio(
                           activeColor:Colors.orange,
                           value: "Turk",
                           groupValue: "$language",
                           onChanged: (value){
                             setState(() {
                               language=value.toString();
                             });
                           }),SizedBox(width: 10,),Text("italiano",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18)),
                     ],
                   ),
                   SizedBox(height: 10,),
                   Row(
                     children: [
                       Radio(
                           activeColor:Colors.orange,
                           value: "Kiswahili",
                           groupValue: "$language",
                           onChanged: (value){
                             setState(() {
                               language=value.toString();
                             });
                           }),SizedBox(width: 10,),Text("Kiswahili",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18)),
                     ],
                   ),
                   SizedBox(height: 10,),
                   Row(
                     children: [
                       Radio(
                           activeColor:Colors.orange,
                           value: "Deutsch",
                           groupValue: "$language",
                           onChanged: (value){
                             setState(() {
                               language=value.toString();
                             });
                           }),SizedBox(width: 10,),Text("Deutsch",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18)),
                     ],
                   ),
                   SizedBox(height: 10,),
                   Row(
                     children: [
                       Radio(
                           activeColor:Colors.orange,
                           value: "Romana",
                           groupValue: "$language",
                           onChanged: (value){
                             setState(() {
                               language=value.toString();
                             });
                           }),SizedBox(width: 10,),Text("Romana",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18)),
                     ],
                   ),
                   SizedBox(height: 10,),

                 ],
               ),
             )

           ],
         ),
       ),
       SizedBox(
         width: double.infinity,
         height: 60,

         child: ElevatedButton(

           child: Text("Submit"),
           onPressed: ()async{
             Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginScreen()));

           },
         ),
       )

     ],
   ),

 );
  }
}