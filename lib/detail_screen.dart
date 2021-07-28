import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/constants.dart';
import 'package:food_delivery_app/main.dart';
class DetailScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return HomeScreen();
                      }));
                    },
                    child: SvgPicture.asset("assets/icons/backward.svg",
                    height: 11),
                  ),
                  SvgPicture.asset("assets/icons/menu.svg",
                  height: 11,),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                padding: EdgeInsets.all(2),
                height: 280,
                width: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:kSecondaryColor
                ),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/image_1_big.png"),
                      fit: BoxFit.cover
                    )
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Vegan salad bowl\n",
                          style: Theme.of(context).textTheme.title
                        ),
                        TextSpan(
                          text: "With red Tomato",
                          style: TextStyle(
                            color: kTextColor.withOpacity(0.5)
                          )
                        ),
                      ]
                    ),
                  ),
                  Text(
                    "\$20",
                    style: Theme.of(context).textTheme.headline!.copyWith(
                      color: kPrimaryColor
                    ),
                  )
                ],
              ),
              Text(
                "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
                style: TextStyle(
                  fontSize: 12
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                      decoration: BoxDecoration(
                        color: kPrimaryColor.withOpacity(.19),
                        borderRadius: BorderRadius.circular(27),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Add to bag",
                            style: Theme.of(context).textTheme.button,
                          ),
                          SizedBox(
                            width: 26,
                          ),
                          SvgPicture.asset("assets/icons/forward.svg")
                        ],
                      ),
                    ),
                    Container(
                      height: 57,
                      width: 57,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kPrimaryColor.withOpacity(0.26),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kPrimaryColor
                            ),
                            child: SvgPicture.asset("assets/icons/bag.svg",
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 10,
                            child: Container(
                              alignment: Alignment.center,
                              height: 17,
                              width: 17,
                              decoration: BoxDecoration(
                                color: kWhiteColor,
                                shape: BoxShape.circle,
                              ),
                              child: Text(
                                "0",
                                style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 8
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}