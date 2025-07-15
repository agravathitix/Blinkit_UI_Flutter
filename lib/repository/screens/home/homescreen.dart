import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var data = [
    {"img": "image 50.png", "text": "Lights, Diyas \n& Candles"},
    {"img": "image 51.png", "text": "Diwali\nGifts"},
    {"img": "image 52.png", "text": "Appliances \n& Gadgets"},
    {"img": "image 53.png", "text": "Home \n& Living"}
  ];
  var category = [
    {"img": "image 54.png", "text": "Golden Glass Wooden\nLid Candle (Oudh)"},
    {"img": "image 57.png", "text": "Royal Gulab Jamun\nBy Bikano"},
    {"img": "image 63.png", "text": "Bikaji Bhujia\n & more"},
  ];
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 185,
                width: double.infinity,
                color: Color(0XFFEC0505),
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
                            color: Color(0XFFFFFFFF),
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
                            color: Color(0XFFFFFFFF),
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
                            color: Color(0XFFFFFFFF),
                            fontWeight: FontWeight.bold,
                            fontsize: 14),
                        UiHelper.CustomText(
                            text: " - Hitix Agravat, Amreli",
                            color: Color(0XFFFFFFFF),
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
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 20,
                    ),
                  )),
              Positioned(
                  bottom: 20,
                  left: 18,
                  child: UiHelper.CustomTextField(controller: searchController))
            ],
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.white,
          ),
          Container(
            height: 180,
            width: double.infinity,
            color: Color(0XFFEC0505),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    UiHelper.CustomImage(img: "cracker1.png"),
                    UiHelper.CustomImage(img: "cracker2.png"),
                    UiHelper.CustomText(
                        text: "Mega Diwali Sale",
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontsize: 18,
                        fontfamily: "bold"),
                    UiHelper.CustomImage(img: "cracker3.png"),
                    UiHelper.CustomImage(img: "cracker4.png"),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              right: 5, left: 5, top: 1, bottom: 5),
                          child: Container(
                            height: 108,
                            width: 86,
                            decoration: BoxDecoration(
                              color: Color(0XFFEAD3D3),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                UiHelper.CustomText(
                                    text: data[index]["text"].toString(),
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontsize: 10),
                                UiHelper.CustomImage(
                                    img: data[index]["img"].toString())
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: data.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          height: 108,
                          width: 93,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: UiHelper.CustomImage(
                              img: category[index]["img"].toString()),
                        ),
                      ),
                      UiHelper.CustomText(
                          text: category[index]["text"].toString(),
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontsize: 8),
                      SizedBox(height: 2,),
                      Padding(
                        padding: const EdgeInsets.only(right: 40),
                        child: Row(
                          children: [
                            UiHelper.CustomImage(img: "time.png"),
                            UiHelper.CustomText(
                                text: "16 MINS",
                                color: Color(0XFF9C9C9C),
                                fontWeight: FontWeight.normal,
                                fontsize: 10)
                          ],
                        ),
                      ),
                      SizedBox(height: 2,),
                      Padding(
                        padding: const EdgeInsets.only(right: 60),
                        child: Row(children: [
                          UiHelper.CustomImage(img: "rupee.png"),
                          UiHelper.CustomText(text: "79", color: Colors.black, fontWeight: FontWeight.bold, fontsize: 15),
                        ],),
                      )
                    ],
                  );
                },
                itemCount: category.length,
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
                  text: "Grocery & Kitchen",
                  color: Color(0XFF000000),
                  fontWeight: FontWeight.bold,
                  fontsize: 14,
                  fontfamily: "bold")
            ],
          ),
          // SizedBox(
          //   height: 5,
          // ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 15,),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
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
        ],
      ),
    );
  }
}
