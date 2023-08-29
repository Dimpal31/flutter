import 'package:flutter/material.dart';
import 'package:hungerz_restaurant/AccountScreen.dart';

class RestaurantProfile extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> RestaurantProfileState();
}

class RestaurantProfileState extends State<RestaurantProfile> {
  var name=TextEditingController();
  var category=TextEditingController();
  var phonenumber=TextEditingController();
  var emailaddress=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(thickness: 5,color: Colors.grey,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //  width: (MediaQuery.of(context).size.width*90)/100,
                  //  padding: EdgeInsets.only(top: 20.0,left: 15.0),
                  child: Container(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("FEATURE IMAGE",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w500),),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
                              height: 130,width: 130,
                              // width: (MediaQuery.of(context).size.width*90)/100,
                              padding: EdgeInsets.only(left: 10.0),
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
                          ],
                        )
                      ],
                    ),
                  ),


                ),

                Container(
                  //  width: (MediaQuery.of(context).size.width*90)/100,
                  padding: EdgeInsets.only(top: 20.0,left: 40.0),
                  child: Row(
                    children: [
                      Icon(Icons.camera_alt,color: Colors.orangeAccent,),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text("Upload Photo",style: TextStyle(fontSize: 14,color: Colors.orangeAccent),),
                      ),


                    ],
                  ),

                ),
              ],
            ),
            Divider(thickness: 5,color: Colors.grey,),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("RESTAURANT INFO",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w500),),

                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text("RESTAURANT NAME",style: TextStyle(fontSize: 11,color: Colors.grey),),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10.0),
                    child: TextField(
                      controller: name,
                      style: TextStyle(fontSize: 12,color: Colors.black),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Food Juncation', hintStyle: TextStyle(color: Colors.black)
                      ),
                    ),
                  ),
                  Divider(thickness: 1,color: Colors.grey,),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text("CATEGORY",style: TextStyle(fontSize: 11,color: Colors.grey),),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10.0),
                    child: TextField(
                      controller: category,
                      style: TextStyle(fontSize: 12,color: Colors.black),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Fast Food, Italian,Chinese', hintStyle: TextStyle(color: Colors.black)

                      ),
                    ),
                  ),
                  Divider(thickness: 1,color: Colors.grey,),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text("PHONE NUMBER",style: TextStyle(fontSize: 11,color: Colors.grey),),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10.0),
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
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text("EMAIL ADDRESS",style: TextStyle(fontSize: 11,color: Colors.grey),),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10.0),
                    child: TextField(
                      controller: emailaddress,
                      style: TextStyle(fontSize: 12,color: Colors.black),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'storename@gmail.com', hintStyle: TextStyle(color: Colors.black)

                      ),
                    ),
                  ),
                  Divider(thickness: 1,color: Colors.grey,),
                  SizedBox(height: 20,),
                  Text("ADDRESS",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w500),),
                  SizedBox(height: 15,),
                 Row(
                   children: [
                     Icon(Icons.location_on,color: Colors.orangeAccent,),
                     Padding(
                       padding: const EdgeInsets.only(left: 10.0),
                       child: Text("1124,Veggy Garden,City food park,United State",style: TextStyle(fontSize: 14,color: Colors.black),),
                     ),
                   ],
                 ),
                  SizedBox(height: 15,),
                  Divider(thickness: 10,color: Colors.white54,),
                  Row(
                    children: [
                      Text("STORE TIMINGS",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w500),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("OPENING TIME",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w500),),
                          SizedBox(height: 10,),
                          Text("8:00 am",style: TextStyle(color: Colors.black,fontSize: 14),),

                        ],
                      ),

                      Expanded(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Column(
                              children: [
                               /* Text("",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w500),),
                                SizedBox(height: 15,),*/
                                Text("CLOSING TIME",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w500),),
                                SizedBox(height: 15,),
                                Text("9:00 pm",style: TextStyle(color: Colors.black,fontSize: 14),),


                              ],
                            ),
                          ),
                        ),
                      ), Divider(thickness: 2,color: Colors.grey,),
                    ],
                  ),
                  Divider(thickness: 1,color: Colors.grey,),
                  SizedBox(height: 10,),

                  Row(
                    children: [
                      Text("ORDER COLOR SETTINGS",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w500),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("COLOR",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w500),),
                          SizedBox(height: 10,),

                          Row(
                            children: [
                              Icon(Icons.circle,color: Colors.green,),
                              Text("Green",style: TextStyle(color: Colors.black,fontSize: 14),),
                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Icon(Icons.circle,color: Colors.yellow,),
                              Text("Yellow",style: TextStyle(color: Colors.black,fontSize: 14),),
                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Icon(Icons.circle,color: Colors.red,),
                              Text("Red",style: TextStyle(color: Colors.black,fontSize: 14),),
                            ],
                          ),

                        ],
                      ),

                      Expanded(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 15,left: 110),
                            child: Column(
                              children: [
                                Text("SET TIMING",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w500),),
                                SizedBox(height: 15,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Row(
                                    children: [
                                      Text("3:00 min",style: TextStyle(color: Colors.black,fontSize: 14),),
                                      SizedBox(width: 50,),
                                      Icon(Icons.alarm,color: Colors.orangeAccent,),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 15,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Row(
                                    children: [
                                      Text("5:00 min",style: TextStyle(color: Colors.black,fontSize: 14),),
                                      SizedBox(width: 50,),
                                      Icon(Icons.alarm,color: Colors.orangeAccent,),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 15,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Row(
                                    children: [
                                      Text("8:00 min",style: TextStyle(color: Colors.black,fontSize: 14),),
                                      SizedBox(width: 50,),
                                      Icon(Icons.alarm,color: Colors.orangeAccent,),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 60,

              child: ElevatedButton(

                child: Text("Update info"),
                onPressed: ()async{
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>AccountScreen()));

                },
              ),
            )
          ],
        ),
      ),
      
      
    );
  }
}