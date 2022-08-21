import 'package:flutter/material.dart';


GestureDetector largeButton (VoidCallback function, Color bgColor, String text){
  return GestureDetector(
    onTap: function,         
    
    child: Container(
      width: 180,
      height: 40,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
        ),
      ),
      child: Center(child: Text(text)),

    ),
  );
}

Text titleText(String text){
  return Text(
    text,
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 60,
    ),
  );
}

Text subTitleText(String text){
  return Text(
    text,
    style: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w300,
    ),
    textAlign: TextAlign.center,
    );
}

Text menuText(String text){
  return Text(
    text,
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.normal,
    ),
  );
}

             
                
              