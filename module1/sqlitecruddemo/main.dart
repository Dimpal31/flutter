import 'package:flutter/material.dart';
import 'package:sqlite_crud_demo/DatabseHelper.dart';
import 'package:sqlite_crud_demo/InsertScreen.dart';
import 'package:sqlite_crud_demo/UpdateScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DatabaseHelper();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {

    super.initState();
    dbhelper=DatabaseHelper();
    initdata();
    setState(() {

    });
  }
DatabaseHelper? dbhelper;
  List<UserData>listdata=[];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text("ViewScreen"),
      ),
      body: ListView.builder(itemCount:listdata.length,itemBuilder: (BuildContext context,int index){

        return Column(
          children: [
            Column(
              children: [

                Text("firstname :- ${listdata[index].firstname}"),SizedBox(width: 10,),
                Text("lastname :- ${listdata[index].lastname}"),SizedBox(width: 10,),
                Text("gender :- ${listdata[index].gender}"),SizedBox(width: 10,),
                Text("age :- ${listdata[index].age}"),SizedBox(width: 10,),
                Text("designation :- ${listdata[index].designation}"),SizedBox(width: 10,),
                Text("department :- ${listdata[index].department}"),SizedBox(width: 10,),
                Text("salary :- ${listdata[index].salary}"),SizedBox(width: 10,),

                PopupMenuButton(
                  itemBuilder: (_) => const <PopupMenuItem<String>>[
                  PopupMenuItem<String>(
                      child: Text('Edit'),value: 'Edit',),
                  PopupMenuItem<String>(
                    child: Text('Delete'),value: 'Delete',),
                ],
                  onSelected: (String value){
                  switch(value){
                    case "Edit":
                      Navigator.push(context, MaterialPageRoute(builder:(_)=>UpdateScreen(listdata[index]) ));
                      break;
                    case "Delete":
                      showDialog(context: context, builder: (BuildContext context){
                        return AlertDialog(
                          title: Text("Delete"),
                          content: Text("Are you sure to Delete"),
                          actions: [
                            TextButton(onPressed:(){Navigator.pop(context);
                            },child: Text("No")),
                            TextButton(onPressed: (){
                              dbhelper!.DeleteData(int.parse(listdata[index].id!));
                              Navigator.pop(context);
                              initdata();
                            }, child: Text("Yes"))
                          ],
                        );
                      });
                      break;
                  }
                  },
                ),
              ],
            )
          ],

        );
      }),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
        onPressed:()
            {
            Navigator.push(context, MaterialPageRoute(builder: (_)=>InsertScreen()));
            }

      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void initdata()async {
    print("Data-list");
    List<UserData>data=await dbhelper!.ViewData();
    setState(() {
      listdata.clear();
      listdata.addAll(data.reversed);
    });
  }
}
