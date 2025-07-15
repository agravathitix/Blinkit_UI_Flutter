import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../widgets/uihelper.dart';

class PrintScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
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
          height: 30,
        ),
        UiHelper.CustomText(
            text: "Print Store",
            color: Color(0XFF000000),
            fontWeight: FontWeight.bold,
            fontsize: 32,
            fontfamily: "bold"),
        UiHelper.CustomText(
            text: "Blinkit ensures secure prints at every stage",
            color: Color(0XFF9C9C9C),
            fontWeight: FontWeight.bold,
            fontsize: 14),
        SizedBox(height: 40,),
        Stack(
          children: [Container(
            height: 180,
            width: 361,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white
            ),
            child: Column(children: [
              SizedBox(height: 20,),
              Row(children: [
                SizedBox(width: 20,),
                UiHelper.CustomText(text: "Documents", color: Color(0XFF000000), fontWeight: FontWeight.bold, fontsize: 14)
              ],),
                SizedBox(height: 5,),
                Row(children: [
                  SizedBox(width: 20,),
                  UiHelper.CustomImage(img: "star.png"),
                  SizedBox(width: 5,),
                  UiHelper.CustomText(text: "Price starting at rs 3/page", color: Color(0XFF9C9C9C), fontWeight: FontWeight.normal, fontsize: 15)
                ],),

              Row(children: [
                SizedBox(width: 20,),
                UiHelper.CustomImage(img: "star.png"),
                SizedBox(width: 5,),
                UiHelper.CustomText(text: "Paper quality: 70 GSM", color: Color(0XFF9C9C9C), fontWeight: FontWeight.normal, fontsize: 15)
              ],),

              Row(children: [
                SizedBox(width: 20,),
                UiHelper.CustomImage(img: "star.png"),
                SizedBox(width: 5,),
                UiHelper.CustomText(text: "Single side prints", color: Color(0XFF9C9C9C), fontWeight: FontWeight.normal, fontsize: 15)
              ],),
              SizedBox(height: 10,),
              Row(children: [
                SizedBox(width: 20,),
               SizedBox(height: 40,width: 125,
               child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Color(0XFF27AF34),shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(5)
               )) ,child: Text("Upload Files",style: TextStyle(fontSize: 13,color: Colors.white),),),
               )
              ],)
            ],),
          ),
           Positioned(child:  UiHelper.CustomImage(img: "document.png"),right: 20,bottom: 40,)
            ]
        )
      ],
    ));
  }
}
