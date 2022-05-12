import 'package:f_delivery/home/food_page_body.dart';
import 'package:f_delivery/utils/colors.dart';
import 'package:f_delivery/utils/dimensions.dart';
import 'package:f_delivery/widgets/big_text.dart';
import 'package:f_delivery/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainFoodPage extends StatefulWidget {
  MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Showing the Header
          Container(

      child: Container(
        margin: EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.height15),
        padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                BigText(text: "Zimbabwe", color: AppColors.mainColor),
                Row(
                  children: [
                    SmallText(text: "Harare", color: Colors.black54,),
                    Icon(Icons.arrow_drop_down_rounded)
                  ],
                ),
            ],
            ),
            Center(
              child: Container(
                width: Dimensions.width45,
                height: Dimensions.height45,
                child: Icon(Icons.search, color: Colors.white, size: Dimensions.iconSize24,),
                decoration: BoxDecoration(
                  color: AppColors.mainColor,
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                ),
              ),
            )

        ]),
      ),
    ),
          //Showing the Body
          Expanded(child: SingleChildScrollView(
            child: FoodPageBody(),
          )),
    ],
      ),
    );
  }
}