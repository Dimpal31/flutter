import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class Verification extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> VerificationState();
}

class VerificationState extends State<Verification> {
  var code=TextEditingController();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       title: Text("Verification"),
     ),
     body: Container(
       padding: EdgeInsets.all(15),
       child: Column(
         children: [
           SizedBox(height: 30,),
           Text("Enter verification code we've sent on given number",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),


           SizedBox(height: 30,),
           Align(
               alignment: Alignment.topLeft,child: Text("ENTER VERIFICATION CODE ",style: TextStyle(fontSize: 13,),)),

           TextField(
             controller: code,
             decoration: InputDecoration(
               hintText: '555666', hintStyle: TextStyle(color: Colors.black)
             ),

           ),
           Spacer(),
           Spacer(),
           Spacer(),
           Spacer(),

           Row(
             children: [

               const Text(
                   'Time',style: TextStyle(fontSize: 15),),
               Spacer(),
               const Text(
                   'Resend',style: TextStyle(color: Colors.orange,fontSize:  15),),


             ],
           ),

           Expanded(
             child: Align(
               alignment: Alignment.bottomCenter,
               child: Container(
                 // margin: const EdgeInsets.all(5),
                 width: double.infinity,
                 height: 50,
                 child: ElevatedButton(
                   onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (_)=>BottomNavigationBarExample()));
                   },
                   child: const Text(
                       'Continue'), // trying to move to the bottom
                 ),
               ),
             ),
           ),

         ],
       ),
     ),
   );

  }
}