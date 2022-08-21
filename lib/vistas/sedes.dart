import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/vistas/laureles.dart';
import 'package:flutter_application_1/vistas/robledo.dart';
import 'package:flutter_application_1/vistas/sabaneta.dart';
import 'package:flutter_application_1/widgets/wcWidgets.dart';

class Sedes extends StatelessWidget{
  Sedes({Key? key }):super(key: key);
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
          height: screenHeight * 0.9,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Spacer(flex: 2),
              titleText("Conoce nuestras sedes"),
              Spacer(flex:1),
              Image(image: AssetImage("lib/assets/mapa.png"),height: 100, width: 200),
              Spacer(flex: 1),

              largeButton(
              (){
                  //aquí irá nuestra función
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return Laureles();
                      },
                    ),
                  ); 
                },
              Color.fromARGB(255, 62, 248, 161),
                  "Sede Laureles",
              ),
              subTitleText("Cll 34 #82B - 07"),
              Spacer(flex: 1),


            largeButton(
              (){
                  //aquí irá nuestra función
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return Robledo();
                      },
                    ),
                  ); 
                },
             Color.fromARGB(255, 62, 248, 161),
                "Sede Robledo",
            ),
            subTitleText("Cra 92 #9 53"),
              Spacer(),


            largeButton(
              (){
                  //aquí irá nuestra función
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return Sabaneta();
                      },
                    ),
                  ); 
                },
              Color.fromARGB(255, 62, 248, 161),
                "Sede Sabaneta",
            ),
            subTitleText("Cra 45 #71 Sur-24"),
              Spacer(flex: 1),


              
              
              
              Spacer(flex: 3),

            ]
          ),
        ),
      ),
    );
  }
}