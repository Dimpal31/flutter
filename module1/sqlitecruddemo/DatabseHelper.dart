import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  Database? database;
  DatabaseHelper(){
    init();

}
  static String table="Company_Employee";
  static String firstname="FirstName";
  static String lastname="LastName";
  static String gender="Gender";
  static String age="Age";
  static String designation="Designation";
  static String department="Department";
  static String salary="Salary";



  void init() async{
    var databasePath= await getDatabasesPath();
    String path=join(databasePath,'custom.db');


    var exists= await databaseExists(path);
    if(!exists){
        print("Create Database");
        try{
          database=await openDatabase(path,version: 1,onCreate: (Database db,int verson) async{
            await db.execute(
              'CREATE TABLE $table (id INTEGER PRIMARY KEY, $firstname TEXT, $lastname TEXT,$gender TEXT, $age TEXT,$designation TEXT, $department TEXT,$salary TEXT)'
            );
          });

        }catch(e){
          print("EXCEPTION+++++++$e");

        }
    }else{
      print("Database Available");
      database=await openDatabase(path,readOnly: false);
      final tables = await database!.rawQuery('SELECT * FROM sqlite_master ORDER BY name');
     /*if(tables.length==1){
       // database!.execute(
       //     'CREATE TABLE $table (id INTEGER PRIMARY KEY, $firstname TEXT, $lastname TEXT,$gender TEXT, $age TEXT,$designation TEXT, $department TEXT,$salary TEXT)'
       // );
     }*/
    }

  }
  InsertData(Map<String,dynamic>values)async{
    var result=await database!.insert(table,values);
    print("result $result");
  }
  ViewData()async{
    var databasePath=await getDatabasesPath();
    String path=join(databasePath,'custom.db');
    database=await openDatabase(path,readOnly: false);

    var result=await database!.rawQuery("select * from $table");
    List<UserData>users=[];

    if(result.length!=0){
      for(var i=0;i<result.length;i++)
        {
          Map<String,dynamic>data=result[i];
          users.add(UserData(data[firstname],data[lastname],data[gender],data[age],data[designation],data[department],data[salary],data["id"].toString(),));
        }
      return users;
    }else{
      return users;
    }

  }
  UpdateData(Map<String,dynamic>values,id)async{
    var result=await database!.update(table, values,where: "id='${int.parse(id.toString())}'");
    print("result $result");

  }
  DeleteData(int roll)async{
    var result=await database!.delete(table,where: "id='$roll'");
    print("result $result");
  }

}

class UserData {
String? firstname;
String? id;
String? gender;
String? lastname;
String? age;
String? designation;
String? department;
String? salary;

UserData(this.firstname,this.lastname,this.gender,this.age,this.designation,this.department,this.salary,this.id);
}