import 'package:flutter/material.dart';
import 'package:restourant_delivery/utils/dimensions.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final IconData icon;
  Color colorIcon;
  AppTextField({
    Key? key,
    required this.textController,
    required this.hintText,
    required this.icon,
    this.colorIcon = const Color(0xFF89dad0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
            left: Dimensions.width20, right: Dimensions.width20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(Dimensions.heigth30),
            boxShadow: [
              BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 5,
                  color: Colors.black12,
                  offset: Offset(0, 0)),
            ]),
        child: TextField(
          controller: textController,
          decoration: InputDecoration(
            // hinttext
            hintText: hintText,
            // prefixIcon
            prefixIcon: Icon(
              icon,
              color: colorIcon,
            ),
            // focusedBorder
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.heigth30),
              borderSide: BorderSide(
                width: 1.0,
                color: Colors.white,
              ),
            ),
            // enabledBoreder
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.heigth30),
              borderSide: BorderSide(
                width: 1,
                color: Colors.white,
              ),
            ),
            // border
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.heigth30),
            ),
          ),
        ));
  }
}
