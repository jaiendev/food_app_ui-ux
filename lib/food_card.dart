import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants.dart';
class FoodCard extends StatelessWidget{
  final String title,ingredient,image,calories,description;
  final int price;
  final Function press;
  FoodCard({
    required this.title,
    required this.ingredient,
    required this.image,
    required this.calories,
    required this.description,
    required this.price,
    required this.press,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: ()=>press(),
      child: Container(
        margin: EdgeInsets.only(left: 20),
        height: 400,
        width: 270,
        child: Stack(
          children: <Widget>[
            Positioned(
              right:0,
              bottom: 0,
              child: Container(
                height: 360,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34),
                  color: kPrimaryColor.withOpacity(0.06),
                ),
              ),
            ),
            Positioned(
              left: 7,
              top: 6,
              child: Container(
                height: 181,
                width: 181,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(0.15),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: -50,
              child: Container(
                height: 180,
                width: 270,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                    )
                ),
              ),
            ),
            Positioned(
              right: 20,
              top: 80,
              child: Text(
                '\$${price}',
                style: Theme.of(context).textTheme.headline!.copyWith(
                    color: kPrimaryColor
                ),
              ),
            ),
            Positioned(
              top: 201,
              left: 40,
              child: Container(
                width: 210,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: Theme.of(context).textTheme.title,
                    ),
                    Text(
                      ingredient,
                      style: TextStyle(
                          color: kTextColor.withOpacity(0.4),
                          fontSize: 12
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      description,
                      maxLines: 4,
                      style: TextStyle(
                          color: kTextColor.withOpacity(0.65),
                          fontSize: 12
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      calories,
                      style: TextStyle(
                          fontSize: 12
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