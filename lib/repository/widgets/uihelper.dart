import 'package:flutter/material.dart';

class UiHelper {
  static CustomImage({required String img}) {
    return Image.asset("assets/images/$img");
  }

  static CustomText(
      {required String text,
      required Color color,
      required FontWeight fontWeight,
      String?  fontfamily,
      required double fontsize}) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontsize,
          fontFamily: fontfamily ?? "regular",
          fontWeight: fontWeight,
          color: color),
    );
  }
  static CustomTextField({required TextEditingController controller}){
    return Container(
      height: 37,
      width: 320,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
          color: Color(0XFFC5C5C5)
        )
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: "Search 'Ice-Cream'",
              prefixIcon: Image.asset("assets/images/search-interface-symbol 1.png"),
            suffixIcon: Image.asset("assets/images/mic 1.png"),
            border: InputBorder.none
        ),
      ),
    );
  }
  static CustomButtom(VoidCallback callback){
    return Container(
      height: 18,
      width: 30,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Color(0XFF27AF34)
        ),
        borderRadius: BorderRadius.circular(4)
      ),
      child: Center(child: Text("ADD", style: TextStyle(fontSize: 8,color: Color(0XFF27AF34)),),),
    );
  }
}
