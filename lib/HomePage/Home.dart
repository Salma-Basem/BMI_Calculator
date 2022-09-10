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
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  double bmiResult =0;
  String Result ='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" BMI CaLculator",style: TextStyle(color: accentHexColor,fontWeight: FontWeight.w300),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: mainHexColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
   SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(width: 130,
              child: TextField(
                controller: heightController,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w300,
                  color: accentHexColor
                ),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Height',
                  hintStyle: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.w300,
                    color: Colors.white.withOpacity(.8)
                  )
                ),
              ),),
              Container(width: 130,
                child: TextField(
                  controller: weightController,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: accentHexColor
                  ),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Weight',
                      hintStyle: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                          color: Colors.white.withOpacity(.8)
                      )
                  ),
                ),)
            ],),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                double h = double.parse(heightController.text);
                double w = double.parse(weightController.text);
                setState(() {
                  bmiResult = w/(h*h);
                  if(bmiResult>25)
                    {
                      Result="You\'re over Weight";
                    }
                  else
                  if(bmiResult>= 18.5 && bmiResult<=25)
                  {
                    Result="You have Normal Weight";
                  }
                  else
                  {
                    Result="You\'re Under Weight";
                  }
                });
              },
              child: Container(child: Text("Calculate",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                color: accentHexColor
                ),),),
            ),
            SizedBox(height: 50,),
            Visibility(
              visible: Result.isNotEmpty,
                child: Container(
                  child: Text(bmiResult.toStringAsFixed(2),
              style: TextStyle(
                  fontSize: 90,
                  //fontWeight: FontWeight.bold,
                  color: accentHexColor
              ),),)),
            SizedBox(height: 30,),
            Container(child: Text(Result,
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w400,
                  color: accentHexColor
              ),),),

            SizedBox(height: 10,),
            leftbar(width: 40),
            SizedBox(height: 20,),
            leftbar(width: 70),
            SizedBox(height: 20,),
            leftbar(width: 40),


           SizedBox(height: 20,),
            rightbar(width: 70),
            SizedBox(height: 50,),
            rightbar(width: 70),


          ]
        ),
      ),
    );
  }
}
