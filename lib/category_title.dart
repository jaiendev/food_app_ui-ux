import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants.dart';

class CategoryTitle extends StatelessWidget{
  final String title;
  final bool active;
  CategoryTitle({required this.title,this.active=false});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(left: 20,right:30 ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.button!.copyWith(
            color: active? kPrimaryColor: kTextColor.withOpacity(0.4)
        ),
      ),
    );
  }
}