import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
              // height: ,
              ),
          Stack(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                color: Color(0XFFF7CB45),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        UiHelper.CustomText(
                            text: "Blinkit in",
                            color: Color(0XFF000000),
                            fontWeight: FontWeight.bold,
                            fontsize: 15,
                            fontfamily: "bold"),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        UiHelper.CustomText(
                            text: "16 Minutes",
                            color: Color(0XFF000000),
                            fontWeight: FontWeight.bold,
                            fontsize: 20,
                            fontfamily: "bold"),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        UiHelper.CustomText(
                            text: "Home",
                            color: Color(0XFF000000),
                            fontWeight: FontWeight.bold,
                            fontsize: 14),
                        UiHelper.CustomText(
                            text: " - Hitix Agravat, Amreli",
                            color: Color(0XFF000000),
                            fontWeight: FontWeight.bold,
                            fontsize: 14),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                  right: 20,
                  bottom: 80,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 20,
                    ),
                  )),
              Positioned(
                  bottom: 20,
                  left: 18,
                  child: UiHelper.CustomTextField(controller: searchController))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          UiHelper.CustomImage(img: "cart.png"),
          SizedBox(
            height: 10,
          ),
          UiHelper.CustomText(
              text: "Reordering will be easy",
              color: Color(0XFF000000),
              fontWeight: FontWeight.bold,
              fontsize: 16,
              fontfamily: "bold"),
          UiHelper.CustomText(
              text: "Items you order will show up here so you can buy",
              color: Color(0XFF000000),
              fontWeight: FontWeight.normal,
              fontsize: 12,),
          UiHelper.CustomText(
            text: "them again easily.",
            color: Color(0XFF000000),
            fontWeight: FontWeight.normal,
            fontsize: 12,),
          SizedBox(height: 30,),
         Row(children: [
           SizedBox(width: 20,),
           UiHelper.CustomText(
               text: "Bestsellers",
               color: Color(0XFF000000),
               fontWeight: FontWeight.bold,
               fontsize: 16,
               fontfamily: "bold"),
         ],),
          SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 10),
                Stack(
                  children: [
                    UiHelper.CustomImage(img: "milk.png"),
                    Padding(
                      padding: EdgeInsets.only(top: 95, left: 65),
                      child: UiHelper.CustomButtom(() {}),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Stack(
                  children: [
                    UiHelper.CustomImage(img: "potato.png"),
                    Padding(
                      padding: EdgeInsets.only(top: 95, left: 65),
                      child: UiHelper.CustomButtom(() {}),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Stack(
                  children: [
                    UiHelper.CustomImage(img: "tomato.png"),
                    Padding(
                      padding: EdgeInsets.only(top: 95, left: 65),
                      child: UiHelper.CustomButtom(() {}),
                    ),
                  ],
                ),
                SizedBox(width: 10),
              ],
            ),
          )

        ],
      ),
    );
  }
}
