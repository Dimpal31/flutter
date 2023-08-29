import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import 'RegisterScreen.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>LoginScreenState();

}

class LoginScreenState extends State<LoginScreen>{
  var phonenumber=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 80,),
          Container(
            width: 100,
           // padding: EdgeInsets.only(left: 20.0),
            child: Expanded(
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaCwO-i9-ml874NZeemcEkuudJo6drJW-kLnOTJwCRwA&s'),
            ),
          ),
          SizedBox(height: 15,),
          Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                 Text("Hungerz",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),

                SizedBox(height: 12,),
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text("RESTAURANT",style: TextStyle(color:Colors.grey,fontSize: 16),),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  alignment: Alignment.center,

                  child: Column(
                    children: [
                      Text("Delivering almost",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                       Text("Everything",style: TextStyle(fontSize: 16),),
                    ],
                  ),
                ),
                SizedBox(height: 70,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    width: double.infinity,
                    height: 250,
                    // padding: EdgeInsets.only(left: 20.0),
                    child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8qiUZHkNYU-zQuC_xDvALw3HCf-UeptI2gg&usqp=CAUh',fit: BoxFit.fill,),
                  ),
                ),
                SizedBox(height: 10,),


              ],
            ),
          ),

          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  CountryCodePicker(
                    onChanged: print,
                    // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                    initialSelection: 'IT',
                    favorite: ['+91',],
                    // optional. Shows only country name and flag
                    showCountryOnly: true,
                    showFlag: false,
                    // optional. Shows only country name and flag when popup is closed.
                    showOnlyCountryWhenClosed: false,
                    // optional. aligns the flag and the Text left
                    alignLeft: false,
                  ),
                  Expanded(
                    child: TextField(
                      controller: phonenumber,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        //  border: OutlineInputBorder(),

                        labelText: 'PHONE NUMBER',
                        hintText: '9898989898',
                      ),

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>RegisterScreen()));
                        },
                        child: const Text(
                            'Continue'), style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)))// trying to move to the bottom
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}