import 'package:flutter/material.dart';
import 'package:hungerz_restaurant/OrderScreen.dart';

class DemoScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState()=>DemoScreenState();
}

class DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Orders'),
        ),
        body:
        Column(
          children: [
           TabBar(
               labelColor: Colors.orange,
            unselectedLabelColor: Colors.black,
               tabs: [
             Tab(text: "New orders".toUpperCase(),),
             Tab(text: "Past orders".toUpperCase(),),
           ]
           ),
            Expanded(child: TabBarView(children: [
                        tabLayout(),
                        tabLayout(),
            ]))
          ],
        ),
      ),
    );
  }

  tabLayout(){
    return   ListView(
      physics: NeverScrollableScrollPhysics(),

      children: [

        ItemWidget(Deliveryday:'Delivery',Deliverytime:'1:20', name: 'Samantha Smith',status:0,orderid: 'Order AE5587',date: '22 June',time: '11:35 am',price: '21.00',paymenttype: 'COD',order1: 'Veg Sandwich x1(Extra Cheese)',order2: 'Fried Chicken x1',order3: 'WaterMelon Juice x1',color:Colors.green),
        ItemWidget(Deliveryday:'Takeaway',Deliverytime:'3:58',name: 'Samantha Smith',status: 1,orderid: 'Order AE5587',date: '22 June',time: '11:35 am',price: '21.00',paymenttype: 'COD',order1: 'Veg Sandwich x1(Extra Cheese)',order2: 'Fried Chicken x1',order3: 'WaterMelon Juice x1',color: Colors.red,),
        ItemWidget(Deliveryday:'Delivery',Deliverytime:'19:20',name: 'Samantha Smith',status: 2,orderid: 'Order AE5587',date: '22 June',time: '11:35 am',price: '21.00',paymenttype: 'COD',order1: 'Veg Sandwich x1(Extra Cheese)',order2: 'Fried Chicken x1',order3: 'WaterMelon Juice x1',color:Colors.yellow),

        ItemWidget(Deliveryday:'Delivery',Deliverytime:'1:20', name: 'Samantha Smith',status:0,orderid: 'Order AE5587',date: '22 June',time: '11:35 am',price: '21.00',paymenttype: 'COD',order1: 'Veg Sandwich x1(Extra Cheese)',order2: 'Fried Chicken x1',order3: 'WaterMelon Juice x1',color:Colors.green),
        ItemWidget(Deliveryday:'Takeaway',Deliverytime:'3:58',name: 'Samantha Smith',status: 1,orderid: 'Order AE5587',date: '22 June',time: '11:35 am',price: '21.00',paymenttype: 'COD',order1: 'Veg Sandwich x1(Extra Cheese)',order2: 'Fried Chicken x1',order3: 'WaterMelon Juice x1',color: Colors.red,),
        ItemWidget(Deliveryday:'Delivery',Deliverytime:'19:20',name: 'Samantha Smith',status: 2,orderid: 'Order AE5587',date: '22 June',time: '11:35 am',price: '21.00',paymenttype: 'COD',order1: 'Veg Sandwich x1(Extra Cheese)',order2: 'Fried Chicken x1',order3: 'WaterMelon Juice x1',color:Colors.yellow),
        ItemWidget(Deliveryday:'Delivery',Deliverytime:'1:20', name: 'Samantha Smith',status:0,orderid: 'Order AE5587',date: '22 June',time: '11:35 am',price: '21.00',paymenttype: 'COD',order1: 'Veg Sandwich x1(Extra Cheese)',order2: 'Fried Chicken x1',order3: 'WaterMelon Juice x1',color:Colors.green),
        ItemWidget(Deliveryday:'Takeaway',Deliverytime:'3:58',name: 'Samantha Smith',status: 1,orderid: 'Order AE5587',date: '22 June',time: '11:35 am',price: '21.00',paymenttype: 'COD',order1: 'Veg Sandwich x1(Extra Cheese)',order2: 'Fried Chicken x1',order3: 'WaterMelon Juice x1',color: Colors.red,),
        ItemWidget(Deliveryday:'Delivery',Deliverytime:'19:20',name: 'Samantha Smith',status: 2,orderid: 'Order AE5587',date: '22 June',time: '11:35 am',price: '21.00',paymenttype: 'COD',order1: 'Veg Sandwich x1(Extra Cheese)',order2: 'Fried Chicken x1',order3: 'WaterMelon Juice x1',color:Colors.yellow),

      ],
      /*  );
    },*/
    );
  }

  ItemWidget({required String Deliveryday,required String Deliverytime,required String name,required int status,required String orderid,required String date,required String time,required String price,required String paymenttype,required String order1,required String order2,required String order3,required Color color}){
   return RawMaterialButton(
     onPressed: () {
       Navigator.push(context, MaterialPageRoute(builder: (_)=>OrderScreen()));
     },
     child: Container(
       padding: EdgeInsets.symmetric(vertical: 10),
       decoration: BoxDecoration(
         border: Border.all(
             color:Colors.grey[300]!
         )
       ),
       child: Row(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           RotatedBox(
             child: Container(
               padding: EdgeInsets.only(top: 5,bottom: 5,right: 3,left: 3),
               //height: 20,width: 50,
               decoration:BoxDecoration(
                   borderRadius: BorderRadius.circular(5),
                   color: color),
               child: Row(
                 children: [
                   Text(Deliveryday,style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white,fontSize: 12),),
                   SizedBox(width: 30,),
                   Text(Deliverytime,style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white,fontSize: 12),),
                 ],
               ),
             ),
             quarterTurns: 3,
           ),

           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
           Container(
             width: (MediaQuery.of(context).size.width*90)/100,
             padding: EdgeInsets.only(top: 10.0),
             child: Row(
               children: [
                 Container(
                     padding:EdgeInsets.only(left: 10),
                     child: Text(name,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                 Spacer(),
                 getStatus(status),

               ],
             ),
           ),

           Container(
             width: (MediaQuery.of(context).size.width*90)/100,
             padding: EdgeInsets.only(top: 10.0),
             child: Row(
               children: [
                 Container(
                     padding:EdgeInsets.only(left: 10),
                     child: Text("$orderid |",style: TextStyle(color: Colors.grey,fontSize: 10),)),
                 Text(" $date,",style: TextStyle(color: Colors.grey,fontSize: 12),),
                 Text(time,style: TextStyle(color: Colors.grey,fontSize: 12),),
                 Spacer(),
                 Text("Rs $price |",style: TextStyle(color: Colors.grey,fontSize: 12),),
                 Text(" $paymenttype",style: TextStyle(color: Colors.grey,fontSize: 12),),

               ],
             ),

           ),

           Container(
             padding: EdgeInsets.only(top: 20),
             child: Row(
               crossAxisAlignment: CrossAxisAlignment.start,

               children: [
                 Container(
                   padding:EdgeInsets.only(left: 10),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("$order1",style: TextStyle(fontSize: 10),),
                       Text("$order2",style: TextStyle(fontSize: 10),),
                       Text("$order3",style: TextStyle(fontSize: 10),),
                     ],
                   ),
                 ),
               ],
             ),
           )
             ],
           )


         ],
       ),
     ),
   );
}

  Widget getStatus(int status) {
    Widget statusWidget=Container();
    switch(status){
      case 0:
        statusWidget= Text("Pending",style: TextStyle(color: Colors.orange),);
        break;
      case 1:
        statusWidget= Text("Accepted",style: TextStyle(color: Colors.green),);
        break;
      case 2:
        statusWidget= Text("Cancel",style: TextStyle(color: Colors.red),);
        break;
    }
    return statusWidget;
  }
}
