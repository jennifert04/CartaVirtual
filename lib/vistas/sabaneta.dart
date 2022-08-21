import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/wcWidgets.dart';


class Sabaneta extends StatelessWidget{
  Sabaneta({Key? key }):super(key: key);
  double screenHeight = 0.0;
  double screenWidth = 0.0;

  
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 176, 228),

      
      body: Center(
        child: Container(
          width: screenWidth * 0.9,
          height: screenHeight ,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Image(image: AssetImage("lib/assets/mapalaureles.png"),height: screenHeight, width: screenWidth),
            ]
            
            
            
          ),
        ),
      ),
    );
  }
}