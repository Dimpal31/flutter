import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungerz_restaurant/EditProduct.dart';

class MyProducts extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>MyProductsState();
}

class MyProductsState extends State<MyProducts> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body:
        Column(
          children: [
            TabBar(
                labelColor: Colors.orange,
            unselectedLabelColor:  Colors.black,
                tabs: [
                  Tab(text: "fast food".toUpperCase(),),
                  Tab(text: "starter".toUpperCase(),),
                  Tab(text: "main course".toUpperCase(),),
                  Tab(text: "desert".toUpperCase(),),
                ]

            ),
            Expanded(child: TabBarView(children: [
              tabLayout(),
              tabLayout(),
              tabLayout(),
              tabLayout(),
            ]))
          ],
        ),
      ),
      
    );
  }
  tabLayout(){
    return   ListView(
      physics: NeverScrollableScrollPhysics(),
      /*  itemCount: 10,
            itemBuilder: (BuildContext context,int index){*/
      children: [

        ItemWidget(image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRanUqF1MzrsLsEVQRbCr7yskk4XqbrJdwCPQ&usqp=CAU', productsname: 'Veg Sandwich',price: '3.50',),
        ItemWidget(image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRanUqF1MzrsLsEVQRbCr7yskk4XqbrJdwCPQ&usqp=CAU', productsname: 'Veg Sandwich',price: '3.50',),
        ItemWidget(image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRanUqF1MzrsLsEVQRbCr7yskk4XqbrJdwCPQ&usqp=CAU', productsname: 'Veg Sandwich',price: '3.50',),
        ItemWidget(image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRanUqF1MzrsLsEVQRbCr7yskk4XqbrJdwCPQ&usqp=CAU', productsname: 'Veg Sandwich',price: '3.50',),
        ItemWidget(image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRanUqF1MzrsLsEVQRbCr7yskk4XqbrJdwCPQ&usqp=CAU', productsname: 'Veg Sandwich',price: '3.50',),
        ItemWidget(image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRanUqF1MzrsLsEVQRbCr7yskk4XqbrJdwCPQ&usqp=CAU', productsname: 'Veg Sandwich',price: '3.50',),
        ItemWidget(image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRanUqF1MzrsLsEVQRbCr7yskk4XqbrJdwCPQ&usqp=CAU', productsname: 'Veg Sandwich',price: '3.50',),
        ItemWidget(image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRanUqF1MzrsLsEVQRbCr7yskk4XqbrJdwCPQ&usqp=CAU', productsname: 'Veg Sandwich',price: '3.50',),
        ItemWidget(image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRanUqF1MzrsLsEVQRbCr7yskk4XqbrJdwCPQ&usqp=CAU', productsname: 'Veg Sandwich',price: '3.50',),
        ItemWidget(image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRanUqF1MzrsLsEVQRbCr7yskk4XqbrJdwCPQ&usqp=CAU', productsname: 'Veg Sandwich',price: '3.50',),
        ItemWidget(image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRanUqF1MzrsLsEVQRbCr7yskk4XqbrJdwCPQ&usqp=CAU', productsname: 'Veg Sandwich',price: '3.50',),
        ItemWidget(image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRanUqF1MzrsLsEVQRbCr7yskk4XqbrJdwCPQ&usqp=CAU', productsname: 'Veg Sandwich',price: '3.50',),

      ],
      /*  );
    },*/
    );
  }

  ItemWidget({
    required String image,
    required String productsname,
    required String price,


    /*required Color color*/
  }){
    bool light = true;
    return RawMaterialButton(
      padding: EdgeInsets.symmetric(vertical: 10),

      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (_)=>EditProduct()));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                  //  width: (MediaQuery.of(context).size.width*90)/100,
                    padding: EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Container(
                        width:100,height: 100,

                            child: ClipRRect(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                                child: Image.network(image,fit: BoxFit.fill,)),
                        ),
                        Container(
                         // width: (MediaQuery.of(context).size.width*90)/100,
                          padding:EdgeInsets.only(left: 20),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  padding:EdgeInsets.only(bottom: 5),
                                  child: Text(productsname,style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),


                              ),
                              Container(
                                  padding:EdgeInsets.only(bottom: 50),
                                  child: Text(price,style: TextStyle(color: Colors.black,fontSize: 12),)),



                            ],
                          ),


                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                    padding:EdgeInsets.only(left: 10),
                                    child: Text("out of stock",style: TextStyle(color: Colors.grey,fontSize: 14),)),
                                Switch(value: light,
                                    thumbColor: const MaterialStatePropertyAll<Color>(Colors.white54),
                                    onChanged: (bool value){
                                  print(value);
                                  setState(() {
                                    light=value;
                                  });
                                })
                              ],
                            ),
                          ],
                        )
                      ],
                    ),

                  ),

               /*   Row(
                    children: [

                    ],
                  ),
*/
                ],
              ),
            ],
          )


        ],
      ),
    );
  }

}