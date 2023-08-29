import 'package:flutter/material.dart';

class MyReviews extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>MyReviewsState();
}

class MyReviewsState extends State<MyReviews>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Food Junction",style: TextStyle(color:Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ItemWidget( name: 'Samantha Smith',icon: Icons.star,point: '4.0',date: '23 feb,20',reviews: 'Awesome food taste as well as quick delivery service. Really appreciate the packing and quality of food delivered. Go for it!!'),
            ItemWidget( name: 'Samantha Smith',icon: Icons.star,point: '4.0',date: '23 feb,20',reviews: 'Awesome food taste as well as quick delivery service. Really appreciate the packing and quality of food delivered. Go for it!!'),
            ItemWidget( name: 'Samantha Smith',icon: Icons.star,point: '4.0',date: '23 feb,20',reviews: 'Awesome food taste as well as quick delivery service. Really appreciate the packing and quality of food delivered. Go for it!!'),
            ItemWidget( name: 'Samantha Smith',icon: Icons.star,point: '4.0',date: '23 feb,20',reviews: 'Awesome food taste as well as quick delivery service. Really appreciate the packing and quality of food delivered. Go for it!!'),
            ItemWidget( name: 'Samantha Smith',icon: Icons.star,point: '4.0',date: '23 feb,20',reviews: 'Awesome food taste as well as quick delivery service. Really appreciate the packing and quality of food delivered. Go for it!!'),
            ItemWidget( name: 'Samantha Smith',icon: Icons.star,point: '4.0',date: '23 feb,20',reviews: 'Awesome food taste as well as quick delivery service. Really appreciate the packing and quality of food delivered. Go for it!!'),
            ItemWidget( name: 'Samantha Smith',icon: Icons.star,point: '4.0',date: '23 feb,20',reviews: 'Awesome food taste as well as quick delivery service. Really appreciate the packing and quality of food delivered. Go for it!!'),
            ItemWidget( name: 'Samantha Smith',icon: Icons.star,point: '4.0',date: '23 feb,20',reviews: 'Awesome food taste as well as quick delivery service. Really appreciate the packing and quality of food delivered. Go for it!!'),
            ItemWidget( name: 'Samantha Smith',icon: Icons.star,point: '4.0',date: '23 feb,20',reviews: 'Awesome food taste as well as quick delivery service. Really appreciate the packing and quality of food delivered. Go for it!!'),
            ItemWidget( name: 'Samantha Smith',icon: Icons.star,point: '4.0',date: '23 feb,20',reviews: 'Awesome food taste as well as quick delivery service. Really appreciate the packing and quality of food delivered. Go for it!!'),

           ],
        ),
      ),
    );
  }
}

ItemWidget({required String name,required IconData icon,required String point,required String date,required String reviews}){
  return Container(
    padding: EdgeInsets.only(left: 15),
    child: Column(
      children: [
        SizedBox(height: 10,),
        Row(
          children: [
            Text(name,style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 14),),
          ],
        ),
        SizedBox(height: 10,),
        // SizedBox(width: 30,),
        Row(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Icon(icon,color: Colors.green,),
                    Text(point,style: TextStyle(fontWeight: FontWeight.w300,color: Colors.green,fontSize: 12),),
                  ],
                ),
              ],
            ),
            Spacer(),

            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(date,style: TextStyle(fontWeight: FontWeight.w300,color: Colors.green,fontSize: 12),),
              ],
            ),
          ],
        ),
        SizedBox(height: 8,),
        // SizedBox(width: 30,),
        Text(reviews,style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black,fontSize: 13),),
        SizedBox(height: 10,),Divider(thickness: 5,color: Colors.white70,),
      ],
    ),
  );
}