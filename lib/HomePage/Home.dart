import 'package:bmicalculator/Constants/constants.dart';
import 'package:bmicalculator/widgets/LeftBar.dart';
import 'package:bmicalculator/widgets/RightBar.dart';
import 'package:bmicalculator/main.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" BMI CaLculator",style: TextStyle(color: accentHexColor,fontWeight: FontWeight.w300),),
      ),
    );
  }
}
