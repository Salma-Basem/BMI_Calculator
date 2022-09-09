import 'package:bmicalculator/Constants/constants.dart';
import 'package:flutter/material.dart';

class leftbar extends StatelessWidget {
  final double width;
  const leftbar({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
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
