import 'package:flutter/material.dart';

import '../CategoryItems.dart';

class HomeScreen extends StatefulWidget{
//  String username;
 // String password;

//  HomeScreen({required this.username,required this.password});

  HomeScreen();


  //DemoScreen();
  @override
  State<StatefulWidget> createState()=>HomeScreenState();
}

class HomeScreenState extends State<HomeScreen>{
  int select=0;

  @override
  Widget build(BuildContext context) {
    var argss=ModalRoute.of(context)?.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Screen"),),

      // body: Text(widget.title!),

      body: Row(
        children: [
          Container(
            width: 100,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(

              //  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),

            ),

            child: ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8),bottomRight: Radius.circular(8)),

              child: MaterialButton(
                onPressed: (){
              //   Navigator.push(context, MaterialPageRoute(builder: (_)=>OrderSystem()));
                },
                child: ListView.builder(
                  itemCount: categorys.length, itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: (){
                      select=index;setState(() {

                      });

                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: select==index? Colors.orangeAccent:null,
                          borderRadius: BorderRadius.circular(8)
                      ),


                      child: Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Column(
                          children: [

                            Image.network(categorys[index].image,height: 50,width: 50,),
                            Text(categorys[index].title,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11),)


                          ],
                        ),
                      ),
                    ),
                  );
                },
                ),
              ),
            ),
          ),

          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 8.0,

              children: List.generate(products.length, (index) {

                final TextStyle? textStyle = Theme.of(context).textTheme.displaySmall;
                return ProductCard(context: context,product: products[index]);
              }
              ),
            ),
          ),
        ],
      ),

    );
  }
}
class Product {
  const Product({required this.image,required this.title,required this.price});

  final String image;
  final String title;
  final String price;
}
const List<Product> products = const <Product>[
  const Product(image: 'https://images.healthshots.com/healthshots/en/uploads/2023/02/09155200/pizza-1.jpg',title: 'Pizza',price: '300'),
  const Product(image: 'https://img.freepik.com/free-photo/mixed-pizza-with-various-ingridients_140725-3790.jpg?w=2000',title: 'Pizza',price: '300'),
  const Product(image: 'https://thumbs.dreamstime.com/b/fast-food-pizza-fire-high-quality-fast-food-concept-fast-food-pizza-fire-high-quality-fast-food-concept-136765666.jpg',title: 'Sandwich',price: '150'),
  const Product(image: 'https://cdn.pixabay.com/photo/2020/05/17/04/22/pizza-5179939_640.jpg',title: 'Pizza',price: '300'),
  const Product(image: 'https://cdn.pixabay.com/photo/2020/05/17/04/22/pizza-5179939_640.jpg',title: 'Pizza',price: '300'),
  const Product(image: 'https://cdn.pixabay.com/photo/2020/05/17/04/22/pizza-5179939_640.jpg',title: 'Pizza',price: '300'),
  const Product(image: 'https://cdn.pixabay.com/photo/2020/05/17/04/22/pizza-5179939_640.jpg',title: 'Pizza',price: '300'),
  const Product(image: 'https://cdn.pixabay.com/photo/2020/05/17/04/22/pizza-5179939_640.jpg',title: 'Pizza',price: '500'),
  const Product(image: 'https://cdn.pixabay.com/photo/2020/05/17/04/22/pizza-5179939_640.jpg',title: 'Pizza',price: '500'),
  const Product(image: 'https://cdn.pixabay.com/photo/2020/05/17/04/22/pizza-5179939_640.jpg',title: 'Pizza',price: '500'),
  const Product(image: 'https://cdn.pixabay.com/photo/2020/05/17/04/22/pizza-5179939_640.jpg',title: 'Pizza',price: '500'),
  const Product(image: 'https://cdn.pixabay.com/photo/2020/05/17/04/22/pizza-5179939_640.jpg',title: 'Pizza',price: '500'),
  const Product(image: 'https://cdn.pixabay.com/photo/2020/05/17/04/22/pizza-5179939_640.jpg',title: 'Pizza',price: '500'),
  const Product(image: 'https://cdn.pixabay.com/photo/2020/05/17/04/22/pizza-5179939_640.jpg',title: 'Pizza',price: '500'),
  const Product(image: 'https://cdn.pixabay.com/photo/2020/05/17/04/22/pizza-5179939_640.jpg',title: 'Pizza',price: '500'),
  const Product(image: 'https://cdn.pixabay.com/photo/2020/05/17/04/22/pizza-5179939_640.jpg',title: 'Pizza',price: '500'),
  const Product(image: 'https://cdn.pixabay.com/photo/2020/05/17/04/22/pizza-5179939_640.jpg',title: 'Pizza',price: '500'),
  const Product(image: 'https://cdn.pixabay.com/photo/2020/05/17/04/22/pizza-5179939_640.jpg',title: 'Pizza',price: '500'),
];
ProductCard({ Key? key,required Product product, required BuildContext context}){
  print(product.image);
  final TextStyle? textStyle = Theme.of(context).textTheme.displaySmall;

  return MaterialButton(
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (_)=>OrderSystem()));
      // 1)using class
      // Navigator.push(context, MaterialPageRoute(builder: (_)=>SecondScreen(title:product.title)));

      // Navigator.push(context, MaterialPageRoute(builder: (_)=>SecondScreen(),settings: RouteSettings(
      //     arguments: {
      //       "title":product.title
      //     }
      //     ))
      // );

      /*Navigator.pushNamed(context, "second",
          arguments: {
            "title":product.title
          }
      );
*/
    },
    child: Card(
      //  color: Colors.orange,
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(

                  child: ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                    child: Image.network(product.image,
                      errorBuilder: (_,__,___){
                        return Text("Image not Load");
                      },
                      fit: BoxFit.fill,),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 8),
                    child: Text(product.title, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13))),

                Container(
                    margin: EdgeInsets.only(left: 8),
                    child: Text(product.price, style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12),textAlign: TextAlign.left,)),
              ]
          ),
        )
    ),
  );
}

class Category {
  const Category({ required this.image,required this.title});

  final String image;
  final String title;

}
const List<Category> categorys = const <Category>[
  const Category(image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEoecVLOewI7w-TKdAVwN_YWg2k6o1ksqNf11ijwmP&s',title: 'Sendwich'),
  const Category(image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTY8V1tK84Cw3TokQGxN3igezP8h4hKkb6lAh-zzQ1dubQs4_rHtIJ0_jOZgomHuGhGKeI&usqp=CAU',title: 'Burger'),
  const Category(image:'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_1280.jpg',title: 'Pizza'),
  const Category(image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRc1Xl_Mq_pcyD58HaxDEytx-W5FhgAqyv70eZu3CRjjg&s',title: 'Shakes'),
  const Category(image:'https://static.vecteezy.com/system/resources/previews/008/386/570/original/asian-traditional-food-with-noodles-and-chopsticks-free-vector.jpg',title: 'Chinese'),
  const Category(image:'https://assets.epicurious.com/photos/5548e2316997a6ba1fd2abcb/4:3/w_1332,h_999,c_limit/56389478_vegetarian-spring-rolls_1x1.jpg',title: 'Rolls'),
  const Category(image:'https://t3.ftcdn.net/jpg/04/41/20/18/360_F_441201852_XQqp1wbAQj9udOC3iT7D0ahKgaf71bns.jpg',title: 'Biryani'),
  const Category(image:'https://media.gettyimages.com/id/165809123/vector/tasty-indian-cuisine-braed.jpg?s=612x612&w=gi&k=20&c=PTp_1Vmi4NyrNevlxEWSsP6KgdEQaU5eUnz8m9qQKkE=',title: 'North Indian'),
];