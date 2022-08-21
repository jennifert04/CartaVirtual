import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/wcWidgets.dart';

class Domicilio extends StatelessWidget{
  Domicilio({Key? key }):super(key: key);
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
          width: screenWidth * 0.6,
          height: screenHeight * 0.9,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              
              Spacer(flex: 1),
              titleText("Ingresa tus datos"),
              Spacer(),
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
              SizedBox(
                width: 180,
                child: TextField(
                  decoration: InputDecoration(hintText: "Dirección"),
                ),
              ),
              SizedBox(
                width: 180,
                child: TextField(
                  decoration: InputDecoration(hintText: "Método de pago"),
                ),
              ),
              Spacer(),
              largeButton(
                      (){
                          showDialog(
                            context: context, 
                            builder: (BuildContext){
                              return AlertDialog(
                                title: Text("Pedido exitoso"),
                                content: Text("Pedido confirmado"),
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
                  
              Color.fromARGB(255, 62, 248, 161),"Terminar pedido"),
              Spacer(),
            ]
            
            
            
          ),
        ),
      ),
    );
  }
}