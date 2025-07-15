import 'package:blinkit_clone/repository/screens/bottomnav/bottomnavscreen.dart';
import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            UiHelper.CustomImage(img: "Blinkit Onboarding Screen.png"),
            SizedBox(
              height: 20,
            ),
            UiHelper.CustomImage(img: "image 10.png"),
            SizedBox(
              height: 15,
            ),
            UiHelper.CustomText(
                text: "India’s last minute app",
                color: Color(0XFF000000),
                fontWeight: FontWeight.bold,
                fontsize: 15,
                fontfamily: "bold"),
            SizedBox(
              height: 15,
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                height: 180,
                width: 320,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0XFFFFFFFF)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    UiHelper.CustomText(
                        text: "Hitix",
                        color: Color(0XFF000000),
                        fontWeight: FontWeight.w500,
                        fontsize: 14),
                    SizedBox(
                      height: 5,
                    ),
                    UiHelper.CustomText(
                        text: "78277XXXX",
                        color: Color(0XFF9C9C9C),
                        fontWeight: FontWeight.bold,
                        fontsize: 14,
                        fontfamily: "bold"),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 48,
                      width: 295,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0XFFE23744),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            UiHelper.CustomText(
                                text: "Login With",
                                color: Color(0XFFFFFFFF),
                                fontWeight: FontWeight.bold,
                                fontsize: 14,
                                fontfamily: "bold"),
                            SizedBox(width: 5,),
                            UiHelper.CustomImage(img: "image 9.png")
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    UiHelper.CustomText(
                        text:
                            "Access your saved addresses from Zomato automatically!",
                        color: Color(0XFF9C9C9C),
                        fontWeight: FontWeight.normal,
                        fontsize: 10),
                    SizedBox(
                      height: 10,
                    ),
                    UiHelper.CustomText(
                        text: "or login with phone number",
                        color: Color(0XFF269237),
                        fontWeight: FontWeight.normal,
                        fontsize: 14)
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
