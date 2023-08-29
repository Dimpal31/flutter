import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>OrderScreenState();
}

class OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
           children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Samantha Smith",style: TextStyle(fontWeight: FontWeight.w600),),
                    ],
                  ),
                  Row(
                    children: [
                      ItemWidget(orderid: 'AE5587', date: 'June 20', time: '11:35'),
                    ],
                  ),
                ],
              ),
            ),

             Padding(
               padding: const EdgeInsets.only(left: 110),
               child: Row(
                 children: [
                   Icon(Icons.message,color: Colors.orangeAccent,),
                   SizedBox(width: 30,),
                   Icon(Icons.call,color: Colors.orangeAccent,),
                 ],
               ),
             )
           ],
          ),SizedBox(height: 25,),
          Divider(thickness: 5,color: Colors.black12,),
        Padding(
          padding: const  EdgeInsets.only(left: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text("ITEM(S)",style: TextStyle(color: Colors.black,fontSize: 14),),
            ],
          ),
        ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              children: [
              Itemss(item1: 'Veg Sandwich',extraitem: 'Extra Cheese', totalitem: '1', price: ' 5.00',extraprice: '3.00'),
              Itemss(item1: 'Fried Chicken',extraitem: '', totalitem: '1', price: ' 7.00',extraprice: ''),

              ],
            ),
          ),SizedBox(height: 20,),
          Divider(thickness: 5,color: Colors.black12,),
          Padding(
            padding: const  EdgeInsets.only(left: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Text("PAYMENT INFO",style: TextStyle(color: Colors.black,fontSize: 14),),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Column(
                      children: [
                        Text("Sub Total",style: TextStyle(color: Colors.black,fontSize: 14),),
                      ],
                    ),SizedBox(width: 220,height: 40,),
                    Column(
                      children: [
                        Text("19.50",style: TextStyle(color: Colors.black,fontSize: 14),),
                      ],
                    ),
                  ],
                ),

                Row(
                  children: [
                    Column(
                      children: [
                        Text("Service Fee",style: TextStyle(color: Colors.black,fontSize: 14),),
                      ],
                    ),SizedBox(width: 214,height: 40,),
                    Column(
                      children: [
                        Text("1.50",style: TextStyle(color: Colors.black,fontSize: 14),),
                      ],
                    ),
                  ],
                ),

                Row(
                  children: [
                    Column(
                      children: [
                        Text("Cash on Delivery",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
                      ],
                    ),SizedBox(width: 173,height: 40,),
                    Column(
                      children: [
                        Text("21.00",style: TextStyle(color: Colors.black,fontSize: 14),),
                      ],
                    ),
                  ],
                ), ],
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
                  //  Navigator.push(context, MaterialPageRoute(builder: (_)=>Verification()));
                  },
                  child: const Text(
                      'Mark as Ready'), // trying to move to the bottom
                ),
              ),
            ),
          )

        ],
      ),

    );
  }
}
ItemWidget({required String orderid,required String date,required String time}){
  return Container(
    padding: EdgeInsets.only(left: 10,top: 8),
    child: Row(
      children: [
        Text(orderid,style: TextStyle(fontWeight: FontWeight.w300,color: Colors.black,fontSize: 12),),
       // SizedBox(width: 30,),
        Text(date,style: TextStyle(fontWeight: FontWeight.w300,color: Colors.black,fontSize: 12),),
       // SizedBox(width: 30,),
        Text(time,style: TextStyle(fontWeight: FontWeight.w300,color: Colors.black,fontSize: 12),),
      ],
    ),
  );
}
Itemss({required String item1,required String extraitem,required String totalitem,required String price,required String extraprice}){
  return Container(
    child: Row(
      children: [
        Column(
          children: [
            Text(item1,style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black,fontSize: 16),), SizedBox(height: 20,),
            Text(extraitem,style: TextStyle(color: Colors.grey,fontSize: 14),), SizedBox(height: 20,),

          ],
        ),SizedBox(width: 50,),

        Text(totalitem,style: TextStyle(color: Colors.black,fontSize: 10),),SizedBox(width: 50,),
        Column(
          children: [
            Text(price,style: TextStyle(color: Colors.black,fontSize: 10),), SizedBox(height: 20,),
            Text(extraprice,style: TextStyle(color: Colors.black,fontSize: 10),),

          ],
        ),
        SizedBox(height: 30,),

      ],
    ),


  );
}
