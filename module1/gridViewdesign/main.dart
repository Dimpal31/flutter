
import 'dart:js_interop';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gridviewtask/screen/HomeScreen.dart';
import 'package:gridviewtask/screen/RoutesData.dart';

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
      /*initialRoute: RoutesData().login,
      routes: {
        RoutesData().login:(BuildContext context)=>MyHomePage(title: "demo",),
        RoutesData().home:(BuildContext context)=>HomeScreen(username: "",password: "",),
      },*/

      // home: LoginDemo(),
      //when use routes that time not require home parameter but need initRoutes
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

  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  var username=TextEditingController();
  var password=TextEditingController();
  bool passToggle=true;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Welcome"),
      ),
      body: Form(
        key: _formkey,
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
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: username,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Phone number, email or username',
                    hintText: 'Enter valid email id as abc@gmail.com'

                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Enter valid email id";
                  }
                  else if(username.text!="abc"){
                    return "Invalid username";
                  }
                  return null;
                },

              ),
            ),
            Padding(padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 15.0,bottom: 0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: password,
                obscureText: passToggle,
                decoration:  InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter secure password',
                    border: OutlineInputBorder(),
                   // keyboardType : TextInputType(TextInputType.visiblePassword),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: InkWell(
                      onTap: (){
                        setState(() {
                          passToggle=!passToggle;
                        });
                      },
                      child: Icon(passToggle ? Icons.visibility:Icons.visibility_off),
                    ),

                ),

               /* validator: (value) {
                  if (value!.isEmpty) {
                    return "* Required";
                  } else if (value.length < 6) {
                    return "Password should be atleast 6 characters";
                  } else if (value.length > 15) {
                    return "Password should not be greater than 15 characters";
                  } else
                    return null;
                },*/
                validator: (value){
                  if(value!.isEmpty){
                    return "* Required";
                  }
                  else if(password.text!="123"){
                    return "Invalid username";
                  }
                  return null;
                },
              ),
            ),
            SizedBox(
              height: 65,
              width: 360,
              child: Container(
                child: Padding(padding: const EdgeInsets.only(top: 20.0),
                  child: ElevatedButton(
                    child: Text('Log in',style: TextStyle(color: Colors.white,fontSize: 20),
                    ),
                    onPressed: (){

                      if (_formkey.currentState!.validate()) {
                      Navigator.push(context,MaterialPageRoute(builder: (_)=>HomeScreen()));
                      SnackBar snk = SnackBar(content: Text("Welcome"));
                      ScaffoldMessenger.of(context).showSnackBar(snk);
                       }else{
                        print("Not Validated");
                      }
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










