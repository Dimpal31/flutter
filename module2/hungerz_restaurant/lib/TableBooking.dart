import 'package:flutter/material.dart';

class TableBooking extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>TableBookingState();
}

class TableBookingState extends State<TableBooking> {
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
     length: 2,
     child: Scaffold(
       appBar: AppBar(
         title: const Text('Table Booking'),
       ),
       body:
       Column(
         children: [
           TabBar(
               labelColor: Colors.orange,
               unselectedLabelColor: Colors.black,
               tabs: [
                 Tab(text: "New Bookings".toUpperCase(),),
                 Tab(text: "Past Bookings".toUpperCase(),),
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
      /*  itemCount: 10,
            itemBuilder: (BuildContext context,int index){*/
      children: [

        ItemWidget( name: 'Samantha Smith',icon: Icons.phone,totalperson: '3 Persons',date: '22 June',time: '11:35 am',occasion: 'Birthday Party'),
        ItemWidget( name: 'Samantha Smith',icon: Icons.phone,totalperson: '3 Persons',date: '22 June',time: '11:35 am',occasion: 'Birthday Party'),
        ItemWidget( name: 'Samantha Smith',icon: Icons.phone,totalperson: '3 Persons',date: '22 June',time: '11:35 am',occasion: 'Birthday Party'),
        ItemWidget( name: 'Samantha Smith',icon: Icons.phone,totalperson: '3 Persons',date: '22 June',time: '11:35 am',occasion: 'Birthday Party'),
        ItemWidget( name: 'Samantha Smith',icon: Icons.phone,totalperson: '3 Persons',date: '22 June',time: '11:35 am',occasion: 'Birthday Party'),
        ItemWidget( name: 'Samantha Smith',icon: Icons.phone,totalperson: '3 Persons',date: '22 June',time: '11:35 am',occasion: 'Birthday Party'),
        ItemWidget( name: 'Samantha Smith',icon: Icons.phone,totalperson: '3 Persons',date: '22 June',time: '11:35 am',occasion: 'Birthday Party'),
        ItemWidget( name: 'Samantha Smith',icon: Icons.phone,totalperson: '3 Persons',date: '22 June',time: '11:35 am',occasion: 'Birthday Party'),
        ItemWidget( name: 'Samantha Smith',icon: Icons.phone,totalperson: '3 Persons',date: '22 June',time: '11:35 am',occasion: 'Birthday Party'),
        ItemWidget( name: 'Samantha Smith',icon: Icons.phone,totalperson: '3 Persons',date: '22 June',time: '11:35 am',occasion: 'Birthday Party'),
        ItemWidget( name: 'Samantha Smith',icon: Icons.phone,totalperson: '3 Persons',date: '22 June',time: '11:35 am',occasion: 'Birthday Party'),
        ItemWidget( name: 'Samantha Smith',icon: Icons.phone,totalperson: '3 Persons',date: '22 June',time: '11:35 am',occasion: 'Birthday Party'),

      ],
      /*  );
    },*/
    );
  }

  ItemWidget({

    required String name,
    required IconData icon,
    required String totalperson,
    required String date,
    required String time,
    required String occasion,

    /*required Color color*/
  })
  {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(
              color:Colors.grey[300]!
          )
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: (MediaQuery.of(context).size.width*90)/100,
                padding: EdgeInsets.only(top: 15.0),
                child: Row(
                  children: [
                    Container(
                        padding:EdgeInsets.only(left: 10),
                        child: Text(name,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                    Spacer(),
                    Container(
                        padding:EdgeInsets.only(left: 10),
                        child: Icon(icon,color: Colors.orange,))

                  ],
                ),


              ),
              Container(
                width: (MediaQuery.of(context).size.width*90)/100,
                 padding: EdgeInsets.only(top: 1.0,left: 15.0),
                child: Row(
                  children: [

                    Text(totalperson,style: TextStyle(color: Colors.grey,fontSize: 12),), Spacer(),
                    Text(date,style: TextStyle(color: Colors.black,fontSize: 12),),
                    Text(time,style: TextStyle(color: Colors.black,fontSize: 12),),



                  ],
                ),

              ),

              Container(
                width: (MediaQuery.of(context).size.width*90)/100,
                padding: EdgeInsets.only(top: 15.0,left: 15.0),
                child: Row(
                  children: [
                    Text(occasion,style: TextStyle(color: Colors.black,fontSize: 12,),), Spacer(),
                  ],
                ),

              ),

            ],
          )


        ],
      ),
    );
  }


  }
