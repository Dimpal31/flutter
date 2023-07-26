import 'package:flutter/material.dart';
import 'package:sqlite_crud_demo/DatabseHelper.dart';
import 'package:sqlite_crud_demo/main.dart';

class UpdateScreen extends StatefulWidget{
  UserData? listdata;
UpdateScreen(this.listdata);

  @override
  State<StatefulWidget> createState() =>UpdateScreenState();
  }

class UpdateScreenState extends State<UpdateScreen> {
var firstname=TextEditingController();
var lastname=TextEditingController();
String? gender="";
var age=TextEditingController();
var designation=TextEditingController();
var department=TextEditingController();
var salary=TextEditingController();
DatabaseHelper? dbHelper;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.listdata!=null){
      dbHelper=DatabaseHelper();
      firstname.text=widget.listdata!.firstname!;
      lastname.text=widget.listdata!.lastname!;
      gender=widget.listdata!.gender!;
      age.text=widget.listdata!.age!;
      designation.text=widget.listdata!.designation!;
      department.text=widget.listdata!.department!;
      salary.text=widget.listdata!.salary!;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.listdata==null?"Save":"Update"),
      ),
      body: ListView(
        children: [
          SizedBox(height: 10,),
          Row(
            children: [
              Text("firstname"),SizedBox(width: 10,),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter FirstName"
                  ),
                  controller: firstname,
                ),
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text("lastname"),SizedBox(width: 10,),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter LastName"
                  ),
                  controller: lastname,
                ),
              )
            ],
          ),
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
          SizedBox(height: 10,),
          Row(
            children: [
              Text("designation"),SizedBox(width: 10,),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter Designation"
                  ),
                  controller: designation,
                ),
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text("department"),SizedBox(width: 10,),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter Department"
                  ),
                  controller: department,
                ),
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text("salary"),SizedBox(width: 10,),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter Salary"
                  ),
                  controller: salary,
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            if(firstname.text.isEmpty || lastname.text.isEmpty || age.text.isEmpty || designation.text.isEmpty || department.text.isEmpty || salary.text.isEmpty){
              print("Enter fields");
            }else{
              Map<String,dynamic>data={
                DatabaseHelper.firstname:firstname.text,
                DatabaseHelper.lastname:lastname.text,
                DatabaseHelper.gender:gender,
                DatabaseHelper.age:age.text,
                DatabaseHelper.designation:designation.text,
                DatabaseHelper.department:department.text,
                DatabaseHelper.salary:salary.text,
              };
              if(widget.listdata==null){
                dbHelper!.InsertData(data);
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=>MyHomePage(title: "Flutter Demo")), (route) => false);
              }else{
                print("Update");
                dbHelper!.UpdateData(data, widget.listdata!.id);
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=>MyHomePage(title: "Flutter Demo")), (route) => false);
            }
            }
          }, child: Text(widget.listdata==null?"Save":"Update"))
        ],
      ),
    );
}

}