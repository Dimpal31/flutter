import 'package:flutter/material.dart';
import 'package:hungerz_restaurant/HomeScreen.dart';
import 'package:hungerz_restaurant/MyProducts.dart';

class EditProduct extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>EditProductState();
}

class EditProductState extends State<EditProduct>{
  String? foodtype="";
  String? emenu="";
  bool light = true;
   List<String> list = <String>['One', 'Two', 'Three', 'Four'];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
      // title: const Text('Edit Product'),
     ),
     body: SingleChildScrollView(
       child: Column(
         children: [
           Row(
             children: [
             Padding(
               padding: const EdgeInsets.only(left: 15),
               child: Icon(Icons.add_box,),
             ),
           Padding(
             padding: const EdgeInsets.all(12.0),
             child: Text("Edit Product",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w700),),
           ),
               SizedBox(width: 70,),
               Text("Out of Stock",style: TextStyle(color: Colors.grey,fontSize: 14),),
               Switch(value: light,
                   thumbColor: const MaterialStatePropertyAll<Color>(Colors.white54),
                   onChanged: (bool value){
                     print(value);
                   })

             ],
           ),
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
                           Text("ITEM IMAGE",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w500),),
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
               children: [
                 Row(
                   children: [
                     Text("ITEM IMAGE",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w500),),
                   ],
                 ),
                 SizedBox(height: 20,),
                 Row(
                   children: [
                     Text("Veg Sandwich",style: TextStyle(color: Colors.black,fontSize: 13),),
                   ],
                 ),
                 Divider(thickness: 1,color: Colors.grey,),
                 SizedBox(height: 20,),
                 Row(
                   children: [
                     Text("Fast Food",style: TextStyle(color: Colors.black,fontSize: 13),),
                   ],
                 ),
                 Divider(thickness: 1,color: Colors.grey,),
                 SizedBox(height: 20,),
                 Row(
                   children: [
                     Text("5.00",style: TextStyle(color: Colors.black,fontSize: 13),),
                   ],
                 ),
                 Divider(thickness: 1,color: Colors.grey,),
                 Divider(thickness: 10,color: Colors.white70,),
                 Divider(thickness: 10,color: Colors.white54,),
                 Row(
                   children: [
                     Text("FOOD TYPE",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w500),),
                   ],
                 ),
                 Row(
                   children: [

                     Row(
                       children: [
                         Radio(
                           activeColor:Colors.orange,
                           // title:  Text("Male"),
                           value:"Veg",
                           groupValue: "$foodtype",
                           onChanged: (value){
                             setState(() {
                               foodtype=value.toString();

                             });
                           },
                         ),Text("Veg",style: TextStyle(fontSize: 14))

                       ],
                     ),Row(
                       children: [
                         Radio(
                           activeColor:Colors.orange,
                           // title:  Text("Male"),
                           value:"NonVeg",
                           groupValue: "$foodtype",
                           onChanged: (value){
                             setState(() {
                               foodtype=value.toString();
                             });
                           },
                         ),Text("NonVeg",style: TextStyle(fontSize: 14))
                       ],
                     )
                   ],
                 ),
                 Divider(thickness: 10,color: Colors.white54,),
                 Row(
                   children: [
                     Text("ADD SPECIFICATION",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w500),),
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
                         Text("OPTION TITLE",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w500),),
                         SizedBox(height: 10,),
                         Text("Extra Cheese",style: TextStyle(color: Colors.black,fontSize: 14),),
                         Divider(thickness: 1,color: Colors.grey,),
                         SizedBox(height: 10,),
                         Text("Extra Mayonnaise",style: TextStyle(color: Colors.black,fontSize: 14),),
                       ],
                     ),

                     Expanded(
                       child: Align(
                         alignment: Alignment.topRight,
                         child: Padding(
                           padding: const EdgeInsets.only(right: 15),
                           child: Column(
                             children: [
                               Text("Price",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w500),),
                               SizedBox(height: 15,),
                               Text("3.00",style: TextStyle(color: Colors.black,fontSize: 14),),
                               SizedBox(height: 15,),
                               Text("2.00",style: TextStyle(color: Colors.black,fontSize: 14),),


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
                   // crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text("+ADD MORE",style: TextStyle(color: Colors.orange,fontSize: 10),),
                      )
                    ],
                  ),
                 SizedBox(height: 10,),
                 Divider(thickness: 1,color: Colors.grey,),
                 Divider(thickness: 10,color: Colors.white54,),
                 SizedBox(height: 10,),
                 Row(
                   children: [
                     Text("DO YOU HAVE eMENU APP?",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w500),),
                   ],
                 ),
                 Row(
                   children: [
                     Row(
                       children: [
                         Radio(
                           activeColor:Colors.orange,
                           // title:  Text("Male"),
                           value:"Yes",
                           groupValue: "$emenu",
                           onChanged: (value){
                             setState(() {
                               emenu=value.toString();

                             });
                           },
                         ),Text("Yes",style: TextStyle(fontSize: 14))

                       ],
                     ),Row(
                       children: [
                         Radio(
                           activeColor:Colors.orange,
                           // title:  Text("Male"),
                           value:"No",
                           groupValue: "$foodtype",
                           onChanged: (value){
                             setState(() {
                               foodtype=value.toString();
                             });
                           },
                         ),Text("No",style: TextStyle(fontSize: 14)),
                       ],
                     ),
                   ],
                 ),
                 Divider(thickness: 10,color: Colors.white54,),
                 Row(
                   children: [
                     Text("ITEM DESCRIPTION",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w500),),
                   ],
                 ),
                 Text("Lorem ipsum dolor sit amet, consecteture adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolor magna aliqua.Ut enim ad minim venim, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                 style: TextStyle(fontSize: 12),),
                 Divider(thickness: 1,color: Colors.grey,),
                 Divider(thickness: 10,color: Colors.white54,),
                 Row(
                   children: [
                     Text("INGREDIENTS",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w500),),
                   ],
                 ),
                  SizedBox(height: 10,),
                  Row(
                   children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Row(
                           children: [
                             Text("Flor"),SizedBox(width: 5,),Icon(Icons.cancel,color: Colors.red,size: 16,),
                           ],
                         ),
                         SizedBox(height: 10,),
                         Row(
                           children: [
                             Text("Sugar"),SizedBox(width: 5,),Icon(Icons.cancel,color: Colors.red,size: 16,),
                           ],
                         ),SizedBox(height: 10,),
                         Row(
                           children: [
                             Text("Baking Powde"),SizedBox(width: 5,),Icon(Icons.cancel,color: Colors.red,size: 16,),
                           ],
                         ),SizedBox(height: 10,),
                         Row(
                           children: [
                             Text("Salt"),SizedBox(width: 5,),Icon(Icons.cancel,color: Colors.red,size: 16,),
                           ],
                         ),

                       ],
                     )
                   ],
                 ),
                 Row(
                   // crossAxisAlignment: CrossAxisAlignment.end,
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(right: 10),
                       child: Text("+ADD MORE",style: TextStyle(color: Colors.orange,fontSize: 10),),
                     )
                   ],
                 ),
                 Divider(thickness: 1,color: Colors.grey,),
                 Divider(thickness: 10,color: Colors.white54,),
                 Row(
                   children: [
                     Text("ITEM VIDEO",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w500),),
                   ],
                 ),
                 SizedBox(height: 10,),
                 Row(
                   children: [
                     Icon(Icons.upload,color: Colors.orange,size: 22,),
                     Text("Upload Video",style: TextStyle(fontSize: 14,color: Colors.orange),)
                   ],
                 ),
                 SizedBox(height: 10,),
                 Divider(thickness: 1,color: Colors.grey,),
                 Divider(thickness: 10,color: Colors.white54,),
                 Row(
                   children: [
                     Text("ADD SPECIFICATION",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w500),),
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
                         SizedBox(height: 12,),
                         Text("2 People Serving",style: TextStyle(color: Colors.black,fontSize: 14),),
                         SizedBox(height: 13,),
                         Divider(thickness: 1,color: Colors.grey,),
                         Text("12 min",style: TextStyle(color: Colors.black,fontSize: 14),),
                         Divider(thickness: 1,color: Colors.grey,),
                         SizedBox(height: 14,),
                         Text("227(kcal)",style: TextStyle(color: Colors.black,fontSize: 14),),
                         Divider(thickness: 1,color: Colors.grey,),
                       ],
                     ),

                     Expanded(
                       child: Align(
                         alignment: Alignment.topRight,
                         child: Padding(
                           padding: const EdgeInsets.only(right: 15),
                           child: Column(
                             children: [

                                   DropdownButton<String>(
                                        // value: list[0],
                                        icon: const Icon(Icons.arrow_drop_down),
                                            elevation: 16,
                                             //style: const TextStyle(color: Colors.deepPurple),
                                          underline: Container(
                                         height: 2,
                                        //  color: Colors.black,
                                        ),
                                           onChanged: (String? value) {
                                          // This is called when the user selects an item.
                                           setState(() {
                                                   });
                                             },
                                            items: list.map<DropdownMenuItem<String>>((String value) {
                                             return DropdownMenuItem<String>(
                                             value: value,
                                             child: Text(value),
                                            );
                                            }).toList(),
                                            ),

                               DropdownButton<String>(
                              //   value: list[0],
                                 icon: const Icon(Icons.arrow_drop_down),
                                 elevation: 16,
                                 //style: const TextStyle(color: Colors.deepPurple),
                                 underline: Container(
                                   height: 2,
                                   //  color: Colors.black,
                                 ),
                                 onChanged: (String? value) {
                                   // This is called when the user selects an item.
                                   setState(() {
                                   });
                                 },
                                 items: list.map<DropdownMenuItem<String>>((String value) {
                                   return DropdownMenuItem<String>(
                                     value: value,
                                     child: Text(value),
                                   );
                                 }).toList(),
                               ),

                               DropdownButton<String>(
                              //   value: list[0],
                                 icon: const Icon(Icons.arrow_drop_down),
                                 elevation: 16,
                                 //style: const TextStyle(color: Colors.deepPurple),
                                 underline: Container(
                                   height: 2,
                                   //  color: Colors.black,
                                 ),
                                 onChanged: (String? value) {
                                   // This is called when the user selects an item.
                                   setState(() {
                                   });
                                 },
                                 items: list.map<DropdownMenuItem<String>>((String value) {
                                   return DropdownMenuItem<String>(
                                     value: value,
                                     child: Text(value),
                                   );
                                 }).toList(),
                               ),
                            //   Text("Price",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w500),),


                             ],
                           ),
                         ),
                       ),
                     ), Divider(thickness: 2,color: Colors.grey,),
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
                 Navigator.push(context, MaterialPageRoute(builder: (_)=>BottomNavigationBarExample()));

               },
             ),
           )
         ],
       ),
     ),
   );
  }
}