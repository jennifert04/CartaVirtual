import 'package:flutter/material.dart';
import 'package:flutter_application_1/vistas/menu.dart';
import 'package:flutter_application_1/vistas/reserva.dart';
import 'package:flutter_application_1/vistas/sedes.dart';
import 'package:flutter_application_1/vistas/signInPage.dart';
import 'package:flutter_application_1/widgets/wcWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/vistas/calendario.dart';



class WelcomePageM extends StatelessWidget {
  WelcomePageM({ Key? key }) : super(key: key);
  double screenHeight = 0.0;
  double screenWidth = 0.0;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 243, 176, 228),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Spacer (flex: 2),
            titleText("VEGGIE"),
            Spacer(flex: 1),

            subTitleText(
              "Bienvenid@s a Veggie, un restaurante consciente!",
            ),

            Spacer(),
            Spacer (flex: 1),
            Image(image: AssetImage("lib/assets/vegetariano.png"),height: 100, width: 200),

            Spacer (flex: 3),
            largeButton(
              (){
                  //aquí irá nuestra función
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return Menu();
                      },
                    ),
                  ); 
                },
            Color.fromARGB(255, 62, 248, 161),
                "Ver menú",
            ),

            Spacer (flex: 1),
            largeButton(
              (){
                  //aquí irá nuestra función
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return Calendario();
                      },
                    ),
                  ); 
                },
            Color.fromARGB(255, 62, 248, 161),
                "Realizar reserva",
            ),
            Spacer (flex: 1),

            largeButton(
              (){
                  //aquí irá nuestra función
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return Sedes();
                      },
                    ),
                  ); 
                },
            Color.fromARGB(255, 62, 248, 161),
                "Ver sedes",
            ),
            Spacer (flex: 1),

            largeButton(
              (){
                  //aquí irá nuestra función
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return SignInPage();
                      },
                    ),
                  );
                },
            Color.fromARGB(255, 62, 248, 161),
                "Registrar usuario",
            ),
            Spacer(flex: 3),
          ]
        )   
      )  
            
          
    );
  }
}