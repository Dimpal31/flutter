import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Verification.dart';

class RegisterScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>RegisterScreenState();


}

class RegisterScreenState extends State<RegisterScreen>{
  var fullname=TextEditingController();
  var emailaddress=TextEditingController();
  var phonenumber=TextEditingController();
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text("Register",style: TextStyle(fontSize: 18),),
    ),
    body: Container(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ListView(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.account_circle_outlined,color: Colors.orangeAccent,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text("FULL NAME",style: TextStyle(fontSize: 11,color: Colors.grey),),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30.0),
                    child: TextField(
                      controller: fullname,
                      style: TextStyle(fontSize: 12,color: Colors.black),
                      decoration: InputDecoration(
                 border: InputBorder.none,
                        hintText: 'Babariya Dimpal', hintStyle: TextStyle(color: Colors.black)

                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                 Row(
                   children: [
                     Icon(Icons.email_outlined,color: Colors.orangeAccent,),
                     Padding(
                       padding: const EdgeInsets.only(left: 10.0),
                       child: Text("EMAIL ADDRESS",style: TextStyle(fontSize: 11,color: Colors.grey),),
                     ),
                   ],
                 ),
                  Container(
                    padding: EdgeInsets.only(left: 30.0),
                    child: TextField(
                      controller: emailaddress,
                      style: TextStyle(fontSize: 12,color: Colors.black),
                      decoration: InputDecoration(
                         border: InputBorder.none,
                        hintText: 'BabariyaDimpal@gmail.com',
                        hintStyle: TextStyle(color: Colors.black)
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                 Row(
                   children: [
                     Icon(Icons.dialpad,color: Colors.orangeAccent,),
                     Padding(
                       padding: const EdgeInsets.only(left: 10.0),
                       child: Text("PHONE NUMBER",style: TextStyle(fontSize: 11,color: Colors.grey),),
                     ),
                   ],
                 ),
                  Container(
                    padding: EdgeInsets.only(left: 30.0),
                    child: TextField(
                      controller: phonenumber,
                      style: TextStyle(fontSize: 12,color: Colors.black),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        //  border: OutlineInputBorder(),
                       // prefixIcon: Icon(Icons.dialpad,color: Colors.orangeAccent,),
                       //   labelText: 'PHONE NUMBER',
                          hintText: '9898989898', hintStyle: TextStyle(color: Colors.black)
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("We'll send verification code on above given number.",style: TextStyle(color:Colors.grey,fontSize: 13,),),


                ],
              ),
            ),
          ),
          Container(
            // margin: const EdgeInsets.all(5),
            width: double.infinity,
            height: 60,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Verification()));
              },
              child: const Text(
                  'Continue'), // trying to move to the bottom
            ),
          )
        ],
      ),
    ),

  );
  }
}