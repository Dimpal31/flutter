import 'package:flutter/material.dart';
import 'package:navigator_demo/HomePage.dart';

import 'HomePage2.dart';
import 'HomePage3.dart';
import 'RoutesData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'navigator  Demo',
      debugShowCheckedModeBanner: false,

      initialRoute: RoutesData().login,
      routes: {
        RoutesData().login:(BuildContext context)=>MyHomePage(title:"Demo",),
        RoutesData().home:(BuildContext context)=>Homepage3(username:"",password:"",),

      },
    //  home: const MyHomePage(title: 'navigator  Demo Home Page'),
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
  var username=TextEditingController();
  var password=TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

       // backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

         // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           TextField(
             controller: username,
             decoration: InputDecoration(
               border: OutlineInputBorder(),
               labelText: 'Phone number, email or username',
               hintText: 'Enter valid email id as abc@gmail.com'
             ),
           ),
            TextField(
              controller: password,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                hintText: 'Enter secure password'
              ),
            ),
            ElevatedButton(
              child: Text('Log in',style: TextStyle(color: Colors.white,fontSize: 20),),
                onPressed: (){
                //    print(username.text);
                 //   print(password.text);

                // 1. Navigator.push(context, MaterialPageRoute(builder:(_)=>Homepage(username: username.text,password: password.text,)));
                
                 /*   Navigator.push(context, MaterialPageRoute(builder:(_) => Homepage2(),
                  settings: RouteSettings(
                    arguments:[
                      username.text,
                      password.text
                    ]

                  )));*/
                  Navigator.pushNamed(context, RoutesData().home,
                  arguments: {
                          "username":username.text,
                          "password":password.text,
                  });
                },
            )

          ],
        ),
      ),

    );
  }
}
