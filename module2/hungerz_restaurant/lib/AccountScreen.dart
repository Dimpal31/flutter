import 'package:flutter/material.dart';
import 'package:hungerz_restaurant/MyReviews.dart';
import 'package:hungerz_restaurant/Settings.dart';
import 'package:hungerz_restaurant/SupportScreen.dart';

import 'RestaurantProfile.dart';

class AccountScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>AccountScreenState();
}

class AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title:  Text("My Account",style: TextStyle(color:Colors.black),),
     ),
     body: Column(
       children: [
         Row(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Container(
               height: 130,width: 130,
              // width: (MediaQuery.of(context).size.width*90)/100,
               padding: EdgeInsets.only(top: 15.0),
               child: Row(
                 children: [
                   Container(
                       padding:EdgeInsets.only(left: 10,top: 10,bottom: 10),
                        child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8qiUZHkNYU-zQuC_xDvALw3HCf-UeptI2gg&usqp=CAUh',fit: BoxFit.fill,),
                   ),
                 ],
               ),
             ),
             Container(
             //  width: (MediaQuery.of(context).size.width*90)/100,
               padding: EdgeInsets.only(top: 20.0,left: 15.0),
               child: Column(
                 children: [

                   SizedBox(height: 10,),
                   Text("Food Junction",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500),),
                   SizedBox(height: 10,),
                   Text("City Food Park",style: TextStyle(color: Colors.black,fontSize: 12),),
                   SizedBox(height: 30,),
                   GestureDetector(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (_)=>RestaurantProfile()));
                       },
                       child: Text("Restaurant Profile",style: TextStyle(color: Colors.orange,fontSize: 12),)),


                 ],
               ),

             ),
           ],
         ),
         Divider(thickness: 5,color: Colors.grey,),
         Expanded(
           child: Padding(
             padding: const EdgeInsets.all(15.0),
             child: ListView(
                children: [
                  Row(
                    children: [
                      Icon(Icons.bar_chart,color: Colors.orangeAccent,),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text("Insight",style: TextStyle(fontSize: 14),),
                      ),
                    ],
                  ),SizedBox(height: 25,),
                  Row(
                    children: [
                      Icon(Icons.wallet,color: Colors.orangeAccent,),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text("Wallet",style: TextStyle(fontSize: 14),),
                      ),
                    ],
                  ),SizedBox(height: 25,),
                  Row(
                    children: [
                      Icon(Icons.rate_review,color: Colors.orangeAccent,),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (_)=>MyReviews()));
                            },
                            child: Text("My Reviews",style: TextStyle(fontSize: 14),)),
                      ),
                    ],
                  ),SizedBox(height: 25,),
                  Row(

                    children: [
                      Icon(Icons.lock,color: Colors.orangeAccent,),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text("Authentication",style: TextStyle(fontSize: 14),),
                      ),
                    ],
                  ),SizedBox(height: 25,),
                  Row(
                    children: [
                      Icon(Icons.format_align_left_rounded,color: Colors.orangeAccent,),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text("Terms & Conditions",style: TextStyle(fontSize: 14),),
                      ),
                    ],
                  ),SizedBox(height: 25,),
                  Row(
                    children: [
                      Icon(Icons.chat,color: Colors.orangeAccent,),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (_)=>SupportScreen()));
                            },
                            child: Text("Support",style: TextStyle(fontSize: 14),)),
                      ),
                    ],
                  ),SizedBox(height: 25,),
                  Row(
                    children: [
                      Icon(Icons.settings,color: Colors.orangeAccent,),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (_)=>Settings()));
                            }, child: Text("Settings",style: TextStyle(fontSize: 14),)),
                      ),
                    ],
                  ),SizedBox(height: 25,),
                  Row(
                    children: [
                      Icon(Icons.logout,color: Colors.orangeAccent,),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text("Logout",style: TextStyle(fontSize: 14),),
                      ),
                    ],
                  ),SizedBox(height: 25,),
                ],
             ),
           ),
         )
       ],
     ),
   );
  }
}