import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var groccerykitchen = [
    {
      "img": "image 41.png",
      "text": "Vegetables &\n Fruits",
    },
    {
      "img": "image 42.png",
      "text": "Atta, Dal &\nx Rice",
    },
    {
      "img": "image 43.png",
      "text": "Oil, Ghee &\n Masala",
    },
    {
      "img": "image 44.png",
      "text": "Dairy, Bread &\n Milk",
    },
    {
      "img": "image 45.png",
      "text": "Biscuits &\n Bakery",
    },
  ];
  var secondgrocerry = [
    {"img": "image 21.png", "text": "Dry Fruits &\n Cereals"},
    {"img": "image 22.png", "text": "Kitchen &\n Appliances"},
    {"img": "image 23.png", "text": "Tea &\n Coffees"},
    {"img": "image 24.png", "text": "Ice Creams &\n much more"},
    {"img": "image 25.png", "text": "Noodles &\n Packet Food"},
  ];
  var snacksanddrinks = [
    {"img": "image 31.png", "text": "Chips &\n Namkeens"},
    {"img": "image 32.png", "text": "Sweets &\n Chocalates"},
    {"img": "image 33.png", "text": "Drinks &\n Juices"},
    {"img": "image 34.png", "text": "Sauces &\n Spreads"},
    {"img": "image 35.png", "text": "Beauty &\n Cosmetics"},
  ];
  var household = [
    {"img": "image 36.png", "text": "detorgent\n powder"},
    {"img": "image 37.png", "text": "soap &\n more"},
    {"img": "image 38.png", "text": "perfume &\n more"},
    {"img": "image 39.png", "text": "sofa &\n more"},
    {"img": "image 40.png", "text": "hair oil &\n more"},
  ];
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
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              UiHelper.CustomText(
                  text: "Grocery & Kitchen",
                  color: Color(0XFF000000),
                  fontWeight: FontWeight.bold,
                  fontsize: 14,
                  fontfamily: "bold")
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0XFFD9EBEB)),
                          child: UiHelper.CustomImage(
                              img: groccerykitchen[index]["img"].toString()),
                        ),
                      ),
                      UiHelper.CustomText(
                          text: groccerykitchen[index]["text"].toString(),
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontsize: 10)
                    ],
                  );
                },
                itemCount: groccerykitchen.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0XFFD9EBEB)),
                          child: UiHelper.CustomImage(
                              img: secondgrocerry[index]["img"].toString()),
                        ),
                      ),
                      UiHelper.CustomText(
                          text: secondgrocerry[index]["text"].toString(),
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontsize: 10)
                    ],
                  );
                },
                itemCount: secondgrocerry.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              UiHelper.CustomText(
                  text: "Snacks & Drinks",
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontsize: 14,
                  fontfamily: "bold"),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0XFFD9EBEB)),
                          child: UiHelper.CustomImage(
                              img: snacksanddrinks[index]["img"].toString()),
                        ),
                      ),
                      UiHelper.CustomText(
                          text: snacksanddrinks[index]["text"].toString(),
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontsize: 10)
                    ],
                  );
                },
                itemCount: snacksanddrinks.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),

          // Expanded(
          //   child: Padding(
          //     padding: const EdgeInsets.only(left: 20),
          //     child: ListView.builder(itemBuilder: (context,index){
          //       return Column(
          //         children: [
          //           Padding(
          //             padding: const EdgeInsets.all(4.0),
          //             child: Container(
          //               height: 78,
          //               width: 71,
          //               decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(10),
          //                   color: Color(0XFFD9EBEB)
          //               ),
          //               child: UiHelper.CustomImage(img: household[index]["img"].toString()),
          //             ),
          //           ),
          //           UiHelper.CustomText(text: household[index]["text"].toString(), color: Colors.black, fontWeight: FontWeight.normal, fontsize: 10)
          //         ],
          //       );
          //     },itemCount: household.length,scrollDirection: Axis.horizontal,),
          //   ),
          // ),
        ],
      ),
    );
  }
}
