import 'package:flutter/material.dart';
import 'package:flutter_application_1/vistas/menu.dart';
import 'package:flutter_application_1/widgets/wcWidgets.dart';

import 'package:flutter_application_1/vistas/laureles.dart';

class SignInPage extends StatelessWidget{
  SignInPage({Key? key }):super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 176, 228),
      
      body: Center(
        
        child: Container(
          width: 380,
          height: 620,
          decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
          child: Column(
            children: [
              Spacer(flex: 2),
              Image(image: AssetImage("lib/assets/user.png"),height: 100, width: 200),
              Spacer(flex:2),
              titleText("Sign In"),
              SizedBox(
                width: 180,
                child: TextField(
                  decoration: InputDecoration(hintText: "User"),
                ),
              ),
              SizedBox(
                width: 180,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(hintText: "Password"),
                ),
              ),
              Spacer(),
              largeButton(
              (){
                  showDialog(
                    context: context, 
                    builder: (BuildContext){
                      return AlertDialog(
                        title: Text("Registro exitoso"),
                        content: Text("Usuario registrado"),
                        actions: <Widget>[
                          largeButton((){
                            Navigator.of(context).pop();
                          },
                          Color.fromARGB(255, 62, 248, 161),"Exit"),
                          ],
                      );
                    },
                  );
                },
                  
              Color.fromARGB(255, 62, 248, 161),"Sign In"),
              Spacer(),
            
            ]
          ),
        ),
      ),
    );
  }
}