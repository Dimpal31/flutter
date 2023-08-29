import 'package:flutter/material.dart';
import 'package:hungerz_restaurant/AccountScreen.dart';

class SupportScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>SupportScreenState();
}

class SupportScreenState extends State<SupportScreen>{
  var phonenumber=TextEditingController();
  var message=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Support",style: TextStyle(color:Colors.black),),
      ),
      body: Column(
        children: [
          SizedBox(height: 30,),
          Container(
            width: 80,
            // padding: EdgeInsets.only(left: 20.0),
            child: Expanded(
              child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxi3L6ymTQ_q3WriBhcHCDUX6iRYhkN7hmrA&usqp=CAU'),
            ),
          ),
          SizedBox(height: 15,),
          Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Text("Hungerz",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),

                SizedBox(height: 8,),
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text("RESTAURANT",style: TextStyle(color:Colors.grey,fontSize: 14),),
                    ],
                  ),
                ),

                SizedBox(height: 45,),
                Divider(thickness: 5,color: Colors.white70,),
                SizedBox(height: 45,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Or Write us your queries",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
                      SizedBox(height: 15,),
                      Text("We will get back to you soon",style: TextStyle(fontSize: 16),),
                      SizedBox(height: 20,),
                      Row(
                        children: [

                          Icon(Icons.phone_android,color: Colors.orangeAccent,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text("FULL NAME",style: TextStyle(fontSize: 11,color: Colors.grey),),
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
                              hintText: '+1 987 654 3210', hintStyle: TextStyle(color: Colors.black)

                          ),
                        ),
                      ),
                      Divider(thickness: 1,color: Colors.grey,),
                      Row(
                        children: [
                          Icon(Icons.mail_outline,color: Colors.orangeAccent,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text("Enter your message here",style: TextStyle(fontSize: 11,color: Colors.grey),),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 30.0),
                        child: TextField(
                          controller: message,
                          style: TextStyle(fontSize: 12,color: Colors.black),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Babariya Dimpal', hintStyle: TextStyle(color: Colors.black)

                          ),
                        ),
                      ),
                      Divider(thickness: 1,color: Colors.grey,),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(

            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                // margin: const EdgeInsets.all(5),
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>AccountScreen()));
                  },
                  child: const Text(
                      'Submit'), // trying to move to the bottom
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}