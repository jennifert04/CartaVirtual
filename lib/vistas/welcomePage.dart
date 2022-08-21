import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/vistas/signInPage.dart';
import 'package:flutter_application_1/widgets/wcWidgets.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 280,
        height: 620,
        decoration: BoxDecoration(
          color: const Color(0xFFF2E8DF),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Spacer (flex: 2),
            titleText("Bienvenid@"),
            Spacer(flex: 1),
            
            
            
            Spacer (flex: 1),
            subTitleText(
              "Esta es una app de prueba",
            ),
            
            Spacer (flex: 2),
            Image(image: AssetImage("lib/assets/app.png")),

            Spacer (flex: 2),

            SizedBox(height: 8),
            subTitleText("Conéctate"),
            Spacer(),
            SizedBox(
              width: 180,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "User",
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 180,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  ),
              ),
            ),


            largeButton(
              (){
                  //aquí irá nueestra función
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return SignInPage();
                      },
                    ),
                  ); 
              },
              Colors.transparent,

              "Sign In",
            ),
            Spacer (flex: 1),
            largeButton(
              (){
                  //aquí irá nuestra función
                },
            Color(0xFFF2D066B),
                "Sign Up",
            ),
            Spacer (flex: 1),
           

            ],
          ),
      ),
    );
  }
}