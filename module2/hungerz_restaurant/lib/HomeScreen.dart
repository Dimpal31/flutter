//import 'package:flutter/material.dart';

/*
class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(

   );
  }
}*/
import 'package:flutter/material.dart';

/// Flutter code sample for [BottomNavigationBar].



import 'package:flutter/material.dart';
import 'package:hungerz_restaurant/AccountScreen.dart';
import 'package:hungerz_restaurant/DemoScreen.dart';
import 'package:hungerz_restaurant/MyProducts.dart';
import 'package:hungerz_restaurant/TableBooking.dart';


class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[
    DemoScreen(),
    TableBooking(),
    MyProducts(),
   AccountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,   // <-- HERE
        showUnselectedLabels: true,
        unselectedItemColor:  Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Orders',
          // backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.table_restaurant_outlined),
            label: 'Table',
          // backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.production_quantity_limits),
            label: 'My Products',
            // backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Account',
            // backgroundColor: Colors.white,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

