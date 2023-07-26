import 'package:flutter/material.dart';
import 'package:logindemo/HomeScreen.dart';
import 'package:logindemo/RoutesData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
     //start screen
      initialRoute: RoutesData().login,
     routes: {
       RoutesData().login:(BuildContext context)=>MyHomePage(title: "demo",),
       RoutesData().home:(BuildContext context)=>HomeScreen(username: "",password: "",),
     },

     // home: LoginDemo(),
     //when use routes that time not require home parameter but need initRoutes
     //  home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      backgroundColor: Colors.white,
      appBar: AppBar(
       // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Welcome"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: const EdgeInsets.only(top: 110.0),
            child: Center(
              child: Container(
                width: 200,
                height: 100,
              ),
            ),),
            Padding(padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              controller: username,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Phone number, email or username',
                hintText: 'Enter valid email id as abc@gmail.com'
              ),
            ),),
            Padding(padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 15.0,bottom: 0),
            child: TextField(
              controller: password,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                  hintText: 'Enter secure password'
              ),
            ),),
            SizedBox(
              height: 65,
              width: 360,
              child: Container(
                child: Padding(padding: const EdgeInsets.only(top: 20.0),
                child: ElevatedButton(
                  child: Text('Log in',style: TextStyle(color: Colors.white,fontSize: 20),
                  ),
                  onPressed: (){

                    print(username.text);
                    print(password.text);

                  // Navigator.push(context, MaterialPageRoute(builder: (_)=>HomeScreen(password:password.text,username:username.text)));
/*                  Navigator.push(context,
                      MaterialPageRoute(builder: (_)=>HomeScreen(password:"",username:""),
                          settings:RouteSettings(
                            arguments:[
                              username.text,
                              password.text


                            ]
                          )
                      ));*/

                  Navigator.pushNamed(context, RoutesData().home,
                      arguments: {
                        "username":username.text,
                        "password":password.text
                      }
                  );

                    print('Successfully log in ');
                  },
                ),),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Center(
                child: Row(
                  children: [
                    Padding(padding: const EdgeInsets.only(left: 62),
                    child: Text('Forgot your login details? '),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 1.0),
                    child: InkWell(
                      onTap: (){
                        print('hello');
                      },
                      child: Text('Get help logging in.', style: TextStyle(fontSize: 14, color: Colors.blue),),
                    ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
