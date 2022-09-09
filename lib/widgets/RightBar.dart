import 'package:bmicalculator/Constants/constants.dart';
import 'package:flutter/material.dart';

class rightbar extends StatelessWidget {
  final double width;
  const rightbar({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 25,
          width: width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft:  Radius.circular(20),
              ),
              color: accentHexColor
          ),
        )
      ],
    );
  }
}
