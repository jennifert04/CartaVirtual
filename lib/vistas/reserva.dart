import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/wcWidgets.dart';


class Reserva extends StatelessWidget{
  Reserva({Key? key }):super(key: key);
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
              Spacer(flex:1),
              titleText("Visítanos!"),
              Spacer(),
              SizedBox(
                width: 180,
                child: TextField(
                  decoration: InputDecoration(hintText: "Día"),
                ),
              ),
              SizedBox(
                width: 180,
                child: TextField(
                  decoration: InputDecoration(hintText: "Mes"),
                ),
              ),
              SizedBox(
                width: 180,
                child: TextField(
                  decoration: InputDecoration(hintText: "Año"),
                ),
              ),
              SizedBox(
                width: 180,
                child: TextField(
                  decoration: InputDecoration(hintText: "Hora "),
                ),
              ),
              SizedBox(
                width: 180,
                child: TextField(
                  decoration: InputDecoration(hintText: "AM o PM"),
                ),
              ),
            Spacer(),
            largeButton(
              (){
                  showDialog(
                    context: context, 
                    builder: (BuildContext){
                      return AlertDialog(
                        title: Text("Reserva exitosa"),
                        content: Text("Reserva registrada"),
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
                  
              Color.fromARGB(255, 62, 248, 161),"Reservar"),
              Spacer(),              
            ]
            
            
            
          ),
        ),
      ),
    );
  }
}