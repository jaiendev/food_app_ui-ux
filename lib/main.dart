import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/category_title.dart';
import 'package:food_delivery_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/detail_screen.dart';
import 'package:food_delivery_app/food_card.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        fontFamily: "Poppins",
        scaffoldBackgroundColor: kWhiteColor,
        primaryColor: kPrimaryColor,
        textTheme: TextTheme(headline: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18
        ),
        button: TextStyle(
          fontWeight: FontWeight.bold
        ),
        title: TextStyle(
            fontWeight: FontWeight.bold,
          fontSize: 18
        ),
        body1: TextStyle(
          color: kTextColor,
          fontSize: 18
        ))
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.all(6),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor.withOpacity(0.26)
        ),
        child: Container(
          padding: EdgeInsets.all(15),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kPrimaryColor,
          ),
          child: SvgPicture.asset("assets/icons/plus.svg")
        ),
      ),
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Align(
                  alignment: Alignment.topRight,
                  child: SvgPicture.asset(
                      "assets/icons/menu.svg",
                    height: 11,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'Simple way to find \nTasty food',
                  style: Theme.of(context).textTheme.headline,
                ),
              ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  CategoryTitle(
                      title: "All",
                      active: true
                  ),
                  CategoryTitle(title: "Italian"),
                  CategoryTitle(title: "Asia"),
                  CategoryTitle(title: "Chinese"),
                  CategoryTitle(title: "England"),
                  CategoryTitle(title: "France"),
                ],
              ),
            ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: kBorderColor),
                ),
                child: SvgPicture.asset("assets/icons/search.svg"),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FoodCard(
                      press: (){
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context){
                          return DetailScreen();
                        }));
                      },
                      title: "Vegan salad bowl",
                    calories: "420Kcal",
                    image: "assets/images/image_1.png",
                    price: 20,
                    ingredient: "With red Tomato",
                    description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",),
                    FoodCard(
                      press: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context){
                              return DetailScreen();
                            }));
                      },
                      title: "Vegan salad bowl",
                      calories: "420Kcal",
                      image: "assets/images/image_2.png",
                      price: 20,
                      ingredient: "With red Tomato",
                      description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",),


                    SizedBox(width: 20,)
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}



