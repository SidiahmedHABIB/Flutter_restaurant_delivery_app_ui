import 'package:flutter/material.dart';
import 'package:restourant_delivery/utils/dimensions.dart';
import 'package:restourant_delivery/widgets/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color incolor;

  const IconAndTextWidget({
    Key? key,
    required this.icon,
    required this.text,
    required this.incolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: incolor),
        SizedBox(width: Dimensions.width5),
        SmallText(text: text),
      ],
    );
  }
}
