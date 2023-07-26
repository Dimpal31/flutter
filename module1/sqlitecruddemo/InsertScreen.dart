import 'package:flutter/material.dart';
import 'package:sqlite_crud_demo/DatabseHelper.dart';

import 'main.dart';

class InsertScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState()=> InsertScreenState();

}

class InsertScreenState extends State<InsertScreen> with WidgetsBindingObserver {
  var firstname=TextEditingController();
  var lastname=TextEditingController();
  String? gender="";
  var age=TextEditingController();
  var designation=TextEditingController();
  var department=TextEditingController();
  var salary=TextEditingController();
  int? selectedRadio;

  DatabaseHelper? dbHelper;
  List<UserData>listdata=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      dbHelper=DatabaseHelper();
     // initData();
    });
    WidgetsBinding.instance.addObserver(this);
  }
@override
  void dispose() {
   WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Insert Data"),
     ),
     body: SingleChildScrollView(
       child: Column(
         children: [

           Padding(padding: const EdgeInsets.only(top: 10.00),
          child: TextField(
            controller: firstname,
            decoration: InputDecoration(
              border:OutlineInputBorder(),
              labelText:'FirstName',
              hintText:'Enter Your First Name'
            ),
          ),),
           Padding(padding: const EdgeInsets.only(top: 10.00),
             child: TextField(
               controller: lastname,
               decoration: InputDecoration(
                   border:OutlineInputBorder(),
                   labelText:'LastName',
                   hintText:'Enter Your Last Name'
               ),
             ),),
           Text("What is your gender?", style: TextStyle(
               fontSize: 18
           ),),
           Divider(),
           Row(
             children: [
               Radio(
                // title:  Text("Male"),
                 value:"Female",
                 groupValue: "$gender",
                 onChanged: (value){
                   setState(() {
                     gender=value.toString();

                   });
                 },
               ),Text("Female")
             ],
           ),
           Row(
             children: [
               Radio(

                 // title:  Text("Male"),
                 groupValue:"$gender",
                value: "Male",
                 onChanged: (value){
                   setState(() {
                     gender=value.toString();

                   });
                 },
               ),Text("Male")
             ],
           ),
           Padding(padding: const EdgeInsets.only(top: 10.00),
             child: TextField(
               controller: age,
               decoration: InputDecoration(
                   border:OutlineInputBorder(),
                   labelText:'Age',
                   hintText:'Enter Your Age'
               ),
             ),),
           Padding(padding: const EdgeInsets.only(top: 10.00),
             child: TextField(
               controller: designation,
               decoration: InputDecoration(
                   border:OutlineInputBorder(),
                   labelText:'Designation',
                   hintText:'Enter Your Designation'
               ),
             ),),
           Padding(padding: const EdgeInsets.only(top: 10.00),
             child: TextField(
               controller: department,
               decoration: InputDecoration(
                   border:OutlineInputBorder(),
                   labelText:'Department',
                   hintText:'Enter Your Department'
               ),
             ),),
           Padding(padding: const EdgeInsets.only(top: 10.00),
             child: TextField(
               controller: salary,
               decoration: InputDecoration(
                   border:OutlineInputBorder(),
                   labelText:'Salary',
                   hintText:'Enter Your Salary'
               ),
             ),),
           SizedBox(
             height: 65,
             width: 360,
             child: Container(
               child: Padding(padding: const EdgeInsets.only(top: 20.0),
               child: ElevatedButton(
                 child: Text('Insert',style: TextStyle(color: Colors.purple,fontSize: 20),
                 ),
                 onPressed: ()async{
                   Map<String,dynamic> data={
                     DatabaseHelper.firstname:"${firstname.text}",
                     DatabaseHelper.lastname:"${lastname.text}",
                     DatabaseHelper.gender:"$gender",
                     DatabaseHelper.age:"${age.text}",
                     DatabaseHelper.designation:"${designation.text}",
                     DatabaseHelper.department:"${department.text}",
                     DatabaseHelper.salary:"${salary.text}",
                   };
                   dbHelper!.InsertData(data);
                   var d=await dbHelper!.database!.rawQuery("select * from ${DatabaseHelper.table}");
                   print("List of Data $d");
               Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=>MyHomePage(title: 'Demo',)), (route) => false);
                 },
               ),),
             ),
           )


         ],
       ),
     ),
   );
  }

}